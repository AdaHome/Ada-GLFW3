with Interfaces.C.Strings;
with Ada.Strings.Unbounded;

package GLFW3.Windows.Drops is

   use Interfaces.C.Strings;

   subtype File_Path_List is chars_ptr_array;

   type Drop_Procedure is access procedure (W : Window; Count : int; Paths : File_Path_List)
     with Convention => C;

   procedure Set_Drop_Callback (W : Window; P : Drop_Procedure) with
     Import,
     Convention => C,
     External_Name => "glfwSetDropCallback",
     Pre => W /= Null_Window;

   procedure Set_Drop_Callback_Safe (W : Window; P : Drop_Procedure);

end;
