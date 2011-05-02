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
with Short_Strings;
private with AVR.Interrupts.Names;

package OSD is
   pragma Preelaborate;

   type Column_Ext is range 0 .. 31;
   for Column_Ext'Size use 8;
   subtype Column_Count is Column_Ext range 0 .. Column_Ext'Last - 1;
   subtype Screen_Col is Column_Count range 1 .. Column_Count'Last;

   type Row_Count is range 0 .. 16;
   for Row_Count'Size use 8;
   subtype Screen_Row is Row_Count range 1 .. Row_Count'Last;

   procedure Clear_Display;

   procedure Put_Char (Col : Screen_Col; Row : Screen_Row; C : Character);
   pragma Inline (Put_Char);

   procedure Put_String (Col : Screen_Col; Row : Screen_Row; S : Short_Strings.Short_String);
   procedure Put_String_P (Col : Screen_Col; Row : Screen_Row; S : Short_Strings.Pgm_Short_String);
   pragma Inline (Put_String_P);
private
   procedure Vertical_Sync_Interrupt;
   pragma Export (Ada, Vertical_Sync_Interrupt, AVR.Interrupts.Names.INT1);
   pragma Machine_Attribute (Vertical_Sync_Interrupt, "signal");

   procedure Horizontal_Sync_Interrupt;
   pragma Export (Ada, Horizontal_Sync_Interrupt, AVR.Interrupts.Names.INT0);
   pragma Machine_Attribute (Horizontal_Sync_Interrupt, "signal");
end OSD;
