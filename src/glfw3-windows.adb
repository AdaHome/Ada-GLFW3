with Ada.Text_IO;
with Ada.Exceptions;

package body GLFW3.Windows is

   function Create_Window_Ada (Width : Window_Width; Height : Window_Height; Title : String; Primary : Monitor := Null_Monitor; Share : Window := Null_Window) return Window is
      W : Window;
      C_Title : Window_Title := To_C (Title);
   begin
      W := Create_Window (Width, Height, C_Title, Primary, Share);
      return W;
   end;

end;
