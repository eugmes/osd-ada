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
package Short_Strings is
   pragma Pure;

   type Count is range 0 .. 127;
   for Count'Size use 8;
   subtype Index is Count range 1 .. 127;

   type Short_String is array (Index range <>) of Character;
   pragma Pack (Short_String);

   type Pgm_Short_String is new Short_String;
   -- FIXME: variables of this types need additional pragma Linker_Section,
   --        also, they should not be read directly
end Short_Strings;
