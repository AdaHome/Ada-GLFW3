with System.Storage_Elements;
with System;
with Interfaces.C;

package GLFW.APIs is

   use System;
   use System.Storage_Elements;
   use Interfaces.C;

   type API is private;

   function Get (Name : char_array) return API;
   function Get (Name : String) return API;
   function Get (Name : String) return Address;

private

   type API is new Address;

end;
