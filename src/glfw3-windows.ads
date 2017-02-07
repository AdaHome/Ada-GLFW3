--with Interfaces.C.Strings; use Interfaces.C.Strings;
with Ada.Unchecked_Conversion;

package GLFW3.Windows is

   pragma Pure;

   Null_Window : constant Window;
   Null_Monitor : constant Monitor;

   type Window_Width is new int range 1 .. int'Last;
   type Window_Height is new int range 1 .. int'Last;
   type Window_Title is new char_array;
   type Window_Close_Flag is new int;

   function Convert is new Ada.Unchecked_Conversion (Window, Address);

   pragma Warnings (Off);
   function Create_Window (Width : Window_Width; Height : Window_Height; Title : Window_Title; Primary : Monitor := Null_Monitor; Share : Window := Null_Window) return Window with
     Import,
     Convention => C,
     External_Name => "glfwCreateWindow",
     Post => Create_Window'Result /= Null_Window;
   pragma Warnings (On);

   function Create_Window_Ada (Width : Window_Width; Height : Window_Height; Title : String; Primary : Monitor := Null_Monitor; Share : Window := Null_Window) return Window;

   procedure Destroy_Window (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwDestroyWindow",
     Pre => W /= Null_Window;


   procedure Make_Context_Current (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwMakeContextCurrent",
     Pre => W /= Null_Window;

   function Window_Should_Close (W : Window) return Window_Close_Flag with
     Import,
     Convention => C,
     External_Name => "glfwWindowShouldClose",
     Pre => W /= Null_Window;

   -- This function swaps the front and back buffers of the specified window.
   -- If the swap interval is greater than zero, the GPU driver waits the specified
   -- number of screen updates before swapping the buffers.
   procedure Swap_Buffers (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwSwapBuffers",
     Pre => W /= Null_Window;


   type Error_Procedure is access procedure (Error : int; Description : access Interfaces.C.char)
     with Convention => C;

   procedure Set_Error_Procedure (P : Error_Procedure) with
     Import,
     Convention => C,
     External_Name => "glfwSetErrorCallback";


   procedure Set_Window_User_Pointer (W : Window; A : Address) with
     Import,
     Convention => C,
     External_Name => "glfwSetWindowUserPointer",
     Pre => W /= Null_Window;

   function Get_Window_User_Pointer (W : Window) return Address with
     Import,
     Convention => C,
     External_Name => "glfwGetWindowUserPointer",
     Pre => W /= Null_Window;

private


   Null_Window : constant Window := 0;
   Null_Monitor : constant Monitor := 0;

end;
