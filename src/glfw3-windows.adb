package body GLFW3.Windows is

   function Create_Window_Ada (Width : Window_Width; Height : Window_Height; Title : String; Primary : Monitor := Null_Monitor; Share : Window := Null_Window) return Window is
   begin
      return Create_Window (Width, Height, To_C (Title), Primary, Share);
   end;

end;
