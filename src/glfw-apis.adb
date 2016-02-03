with GLFW.C;

package body GLFW.APIs is

   use GLFW.C;

   function Get (Name : String) return Address is
   begin
      return glfwGetProcAddress (To_C (Name));
   end;

   function Get (Name : char_array) return API is
   begin
      return API (glfwGetProcAddress (Name));
   end;

   function Get (Name : String) return API is
   begin
      return Get (To_C (Name));
   end;


end;
