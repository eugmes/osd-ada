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
with OSD;
with Short_Strings;

package body OSD_Utils is
   -- Some graphical characters
   TL_Corner : constant Character := Character'Val (16#da#);
   TR_Corner : constant Character := Character'Val (16#bf#);
   BL_Corner : constant Character := Character'Val (16#c0#);
   BR_Corner : constant Character := Character'Val (16#d9#);
   H_Line : constant Character := Character'Val (16#c4#);
   V_Line : constant Character := Character'Val (16#b3#);

   -- Static strings
   Pressure_Str : constant Short_Strings.Pgm_Short_String := "Press:        kPa";
   Voltage_Str : constant Short_Strings.Pgm_Short_String  := "Volt :        V";
   Altitude_Str : constant Short_Strings.Pgm_Short_String := "Alt  :        m";

   pragma Linker_Section (Pressure_Str, ".progmem");
   pragma Linker_Section (Voltage_Str, ".progmem");
   pragma Linker_Section (Altitude_Str, ".progmem");

   -- Show static part of the OSD
   procedure Show_OSD is
   begin
      -- First show the frame
      OSD.Put_Char (1, 4, TL_Corner);
      OSD.Put_Char (1, 8, BL_Corner);

      for Col in OSD.Screen_Col range 2 .. 19 loop
         OSD.Put_Char (Col, 4, H_Line);
         OSD.Put_Char (Col, 8, H_Line);
      end loop;

      OSD.Put_Char (20, 4, TR_Corner);
      OSD.Put_Char (20, 8, BR_Corner);

      for Row in OSD.Screen_Row range 5 .. 7 loop
         OSD.Put_Char (1, Row, V_Line);
         OSD.Put_Char (20, Row, V_Line);
      end loop;

      -- Now show static strings
      OSD.Put_String_P (2, 5, Pressure_Str);
      OSD.Put_String_P (2, 6, Voltage_Str);
      OSD.Put_String_P (2, 7, Altitude_Str);
   end Show_OSD;
end OSD_Utils;
