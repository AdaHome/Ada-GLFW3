package body GLFW.Displays.Windows is

   procedure Swap_Buffers (W : Window) is
   begin
      glfwSwapBuffers (W.Base);
   end;

   procedure Destroy (W : Window) is
   begin
      glfwDestroyWindow (W.Base);
   end;

   function Closing (W : Window) return Close_Flag is
   begin
      return Close_Flag (glfwWindowShouldClose (W.Base));
   end;

   function Create (Width : Natural; Height : Natural; Title : char_array; Primary : Monitor; Share : Window) return Window is
      W : GLFWwindow;
   begin
      W := glfwCreateWindow (int (Width), int (Height), Title, Null_Address, Share.Base);
      return (Base => W);
   end;

   function Create (Width : Natural; Height : Natural; Title : char_array) return Window is
   begin
      return Create (Width, Height, Title, Null_Monitor, Null_Window);
   end;

   function Create (Width : Natural; Height : Natural; Title : char_array; Primary : Monitor) return Window is
   begin
      return Create (Width, Height, Title, Null_Monitor, Null_Window);
   end;

   function Create (Width : Natural; Height : Natural; Title : char_array; Share : Window) return Window is
   begin
      return Create (Width, Height, Title, Null_Monitor, Share);
   end;


   procedure Make_Context_Current (W : Window) is
   begin
      glfwMakeContextCurrent (W.Base);
   end;

end;
