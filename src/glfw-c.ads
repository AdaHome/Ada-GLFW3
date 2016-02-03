with System;
with System.Storage_Elements;
with Interfaces.C;
with Interfaces.C.Strings;

package GLFW.C is

   use System;
   use System.Storage_Elements;
   use Interfaces.C;
   use Interfaces.C.Strings;

   subtype GLFWwindow is Address;
   subtype GLFWmonitor is Address;
   subtype GLFWglproc is Address;

   type GLFWvidmode is record
      Width        : int;
      Height       : int;
      Red_Bits     : int;
      Green_Bits   : int;
      Blue_Bits    : int;
      Refresh_Rate : int;
   end record;-- with Convention => C;

   -- This function initializes the GLFW library.
   -- Before most GLFW functions can be used, GLFW must be initialized, and before an application terminates GLFW should be terminated in order to free any resources allocated during or after initialization.
   -- If this function fails, it calls glfwTerminate before returning.
   -- If it succeeds, you should call glfwTerminate before the application exits.
   -- Additional calls to this function after successful initialization but before termination will return GL_TRUE immediately.
   function glfwInit return int with
     Import,
     Convention => C,
     External_Name => "glfwInit";


   pragma Warnings (Off);
   function glfwCreateWindow (Width : int; Height : int; Title : char_array; Primary : GLFWmonitor := Null_Address; Share : GLFWwindow := Null_Address) return GLFWWindow with
     Import,
     Convention => C,
     External_Name => "glfwCreateWindow";
   pragma Warnings (On);

   procedure glfwPollEvents with
     Import,
     Convention => C,
     External_Name => "glfwPollEvents";

   procedure glfwWaitEvents with
     Import,
     Convention => C,
     External_Name => "glfwWaitEvents";

   procedure glfwMakeContextCurrent (W : GLFWWindow) with
     Import,
     Convention => C,
     External_Name => "glfwMakeContextCurrent";


   procedure glfwDestroyWindow (W : GLFWWindow) with
     Import,
     Convention => C,
     External_Name => "glfwDestroyWindow";

   function glfwWindowShouldClose (W : GLFWWindow) return int with
     Import,
     Convention => C,
     External_Name => "glfwWindowShouldClose";

   procedure glfwSwapBuffers (W : GLFWWindow) with
     Import,
     Convention => C,
     External_Name => "glfwSwapBuffers";

   procedure glfwGetCursorPos (W : GLFWWindow; X : out double; Y : out double) with
     Import,
     Convention => C,
     External_Name => "glfwGetCursorPos";




   function glfwGetPrimaryMonitor return GLFWmonitor with
     Import,
     Convention => C,
     External_Name => "glfwGetPrimaryMonitor";


   function glfwGetVideoMode (M : GLFWmonitor) return access GLFWvidmode with
     Import,
     Convention => C,
     External_Name => "glfwGetVideoMode";


   function glfwGetVideoMode (M : GLFWmonitor) return Address with
     Import,
     Convention => C,
     External_Name => "glfwGetVideoMode";


    function glfwGetKey (window : GLFWwindow; key : int) return int with
     Import,
     Convention => C,
     External_Name => "glfwGetKey";


   type GLFWdropfun is access procedure (W : GLFWwindow; Count : int; Paths : chars_ptr_array)
     with Convention => C;


   procedure glfwSetDropCallback (W : GLFWwindow; P : GLFWdropfun) with
     Import,
     Convention => C,
     External_Name => "glfwSetDropCallback";

   procedure glfwSetDropCallback (W : GLFWwindow; P : Address) with
     Import,
     Convention => C,
     External_Name => "glfwSetDropCallback";

   --pragma Warnings (Off);
   function glfwGetProcAddress (Name : char_array) return GLFWglproc with
     Import,
     Convention => C,
     External_Name => "glfwGetProcAddress";
   --pragma Warnings (On);

   GLFW_NO_CURRENT_CONTEXT : constant GLFWglproc := To_Address (16#00010002#);

end;
