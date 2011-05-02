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
with AVR.MCU;
with AVR.Interrupts;
with OSD;
with OSD_Utils;

-- The microcontroller connections are:
--    PD1 (TXD)  - whiteout
--    PD2 (INT0) - composite sync
--    PD3 (INT1) - vertical sync
procedure Main is
   procedure Init_IO is
      use AVR.MCU;
   begin
      -- Set clock prescaler to 1
      CLKPR := CLKPCE;
      CLKPR := 0; -- FIXME is it needed?

      -- Enable SPI master mode on USART, no interrupts
      UCSR0C := UMSEL01 or UMSEL00;

      -- Enable transmission just for setting baudrate, at half of maximum speed
      UCSR0B := TXEN0;
      UBRR0H := 0;
      UBRR0L := 1;

      UCSR0B := 0;

      -- interrupt table in flash
      MCUCR := IVCE;
      MCUCR := 0;

      -- enable INT0, INT1 on raising edge
      EICRA := ISC11 or ISC10 or ISC01 or ISC00;
      EIMSK := INT1 or INT0;
   end Init_IO;
begin
   Init_IO;
   OSD.Clear_Display;
   OSD_Utils.Show_OSD;
   AVR.Interrupts.Enable;
   loop
      null;
   end loop;
end Main;
