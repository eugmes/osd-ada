-- Copyright © 2011 Євгеній Мещеряков <eugen@debian.org>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
with Font;
with System.Machine_Code;
with Ada.Characters.Latin_1;
with Interfaces;
with AVR.MCU;
with System;

package body OSD is
   type Screen_Row_Type is array (Screen_Col) of Font.Char;
   pragma Pack (Screen_Row_Type);

   type Screen_Type is array (Screen_Row) of Screen_Row_Type;
   pragma Pack (Screen_Type);

   Screen : Screen_Type;
   pragma Volatile (Screen);

   procedure Clear_Display is
   begin
      Screen := (others => (others => 0));
   end Clear_Display;

   procedure Put_Char (Col : Screen_Col; Row : Screen_Row; C : Character) is
   begin
      Screen (Row)(Col) := Character'Pos (C);
   end Put_Char;

   procedure Put_String (Col : Screen_Col; Row : Screen_Row; S : Short_Strings.Short_String) is
      Cur_Col : Column_Ext;
   begin
      Cur_Col := Col;
      for I in Short_Strings.Index range S'Range loop
         Put_Char (Cur_Col, Row, S (I));
         Cur_Col := Cur_Col + 1;
      end loop;
   end Put_String;

   procedure Put_String_P (Col : Screen_Col; Row : Screen_Row; S : Short_Strings.Pgm_Short_String) is
      use System;
      use System.Machine_Code;

      Cur_Col : Column_Ext;
      C : Character;
   begin
      Cur_Col := Col;
      for I in Short_Strings.Index range S'Range loop
         Asm ("lpm %0, %a1",
              Outputs => Character'Asm_Output ("=r", C),
              Inputs => Address'Asm_Input ("z", S (I)'Address));
         Put_Char (Cur_Col, Row, C);
         Cur_Col := Cur_Col + 1;
      end loop;
   end Put_String_P;

   -- Interrupt related routines
   type Line_Counter_Type is mod 2**16;
   for Line_Counter_Type'Size use 16;

   Line_Counter : Line_Counter_Type;
   pragma Volatile (Line_Counter);

   -- the number of the line where to start output
   Output_Start : constant Line_Counter_Type := 30;

   procedure Vertical_Sync_Interrupt is
   begin
      Line_Counter := 0;
   end Vertical_Sync_Interrupt;

   procedure Show_Line (Screen_Line_Address : System.Address; Font_Plane_Address : System.Address) is
      use Ada.Characters.Latin_1;
      use AVR.MCU;
      use Interfaces;
      use System;
      use System.Machine_Code;

      Column_Counter : Unsigned_8 := Unsigned_8 (Screen_Col'Last - Screen_Col'First);
      Screen_Ptr_Address : System.Address := Screen_Line_Address;
   begin
      -- r30 is part of Z and also used as temporary _high_ register
      Asm ("ldi r30, 9"            & LF &      -- delay before line start
   "1:"&HT&"subi r30, 1"           & LF & HT & -- TODO store to EEPROM
           "brne 1b"               & LF & HT &
           "ldi r30, %2"           & LF & HT & -- enable transmission
           "sts %3, r30"           & LF &
   "2:"&HT&"ld __tmp_reg__, %a1+"  & LF & HT & -- load symbol to __tmp_reg__
           "movw r30, %A5"         & LF & HT & -- load pixels to __tmp_reg__ ...
           "add r30, __tmp_reg__"  & LF & HT &
           "adc r31, __zero_reg__" & LF & HT &
           "lpm __tmp_reg__, Z"    & LF & HT & -- ... here
           "ldi r30, 6"            & LF &      -- wait for completion of the previous SPI transfer
   "1:"&HT&"subi r30, 1"           & LF & HT &
           "brne 1b"               & LF & HT &
           "nop"                   & LF & HT &
           "sts %4, __tmp_reg__"   & LF & HT & -- transmit current pixels
           "subi %0, 1"            & LF & HT & -- check if there are more columns to show
           "brne 2b"               & LF & HT &
           "nop"                   & LF & HT &
           "nop"                   & LF & HT &
           "nop"                   & LF & HT &
           "sts %3, __zero_reg__",             -- disable transmission
           Outputs => (Unsigned_8'Asm_Output ("+r", Column_Counter),    -- %0
                       Address'Asm_Output ("+e", Screen_Ptr_Address)),  -- %1, invalid after execution
           Inputs => (UCSR0B_Type'Asm_Input ("i", TXEN0),               -- %2
                      Address'Asm_Input ("i", UCSR0B_Addr),             -- %3
                      Address'Asm_Input ("i", UDR0_Addr),               -- %4
                      Address'Asm_Input ("e", Font_Plane_Address)),     -- %5
           Clobber => "cc, r30, r31", -- r31:r30 is Z used for transfer
           Volatile => True);
   end Show_Line;
   pragma Inline (Show_Line);

   procedure Horizontal_Sync_Interrupt is
      Cur_Line : Line_Counter_Type;
      Font_Plane : Font.Plane_Index;
   begin
      Cur_Line := Line_Counter;
      Cur_Line := Cur_Line + 1;
      Line_Counter := Cur_Line;

      if Cur_Line >= Output_Start then
         -- Each pixel occupies 2 lines (really 4, with interleaving)
         Cur_Line := (Cur_Line - Output_Start) / 2;
         Font_Plane := Font.Plane_Index (Cur_Line mod 8);

         -- Check if current line is still on the screen
         Cur_Line := Cur_Line / 8 + 1;
         if Cur_Line <= Line_Counter_Type (Row_Count'Last) then
            Show_Line (Screen (Row_Count (Cur_Line))'Address,
                       Font.Font_Data (Font_Plane)'Address);
         end if;
      end if;
   end Horizontal_Sync_Interrupt;
end OSD;
