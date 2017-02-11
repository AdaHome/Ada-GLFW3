with Ada.Unchecked_Conversion;
with System;
with System.Storage_Elements;
with GLFW3.Monitors;

package GLFW3.Windows is

   use System;

   type Window is private;

   Null_Window : constant Window;

   type Window_Width is new int range 1 .. int'Last;
   type Window_Height is new int range 1 .. int'Last;
   type Window_Title is new char_array;
   type Window_Close_Flag is new int;

   function Create_Window_Ada (Width : Window_Width; Height : Window_Height; Title : String; Primary : Monitors.Monitor := Monitors.Null_Monitor; Share : Window := Null_Window) return Window;

   pragma Warnings (Off);
   function Create_Window (Width : Window_Width; Height : Window_Height; Title : Window_Title; Primary : Monitors.Monitor := Monitors.Null_Monitor; Share : Window := Null_Window) return Window with
     Import,
     Convention => C,
     External_Name => "glfwCreateWindow",
     Post => Create_Window'Result /= Null_Window;
   pragma Warnings (On);


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
   procedure Swap_Buffers (Item : Window) with
     Import,
     Convention => C,
     External_Name => "glfwSwapBuffers",
     Pre => Item /= Null_Window;

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

   generic
      type Element is private;
   function Generic_Get_Window_User_Pointer (W : Window) return Element;


   procedure Set_Window_Should_Close (W : Window; Value : int) with
     Import,
     Convention => C,
     External_Name => "glfwSetWindowShouldClose",
     Pre => W /= Null_Window;



private

   use System;

   type Window is new Address;
   type Monitor is new Address;
   type Procedure_Address is new Address;

   Null_Window : constant Window := Window (Null_Address);

end;
