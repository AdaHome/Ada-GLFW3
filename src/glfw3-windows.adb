--with Ada.Text_IO;
--with Ada.Exceptions;

package body GLFW3.Windows is

   function Create_Window_Ada (Width : Window_Width; Height : Window_Height; Title : String; Primary : Monitors.Monitor := Monitors.Null_Monitor; Share : Window := Null_Window) return Window is
      W : Window;
      C_Title : Window_Title := To_C (Title);
   begin
      W := Create_Window (Width, Height, C_Title, Primary, Share);
      return W;
   end;

   function Generic_Get_Window_User_Pointer (W : Window) return Element is
      function Convert is new Ada.Unchecked_Conversion (Address, Element);
   begin
      return Convert (Get_Window_User_Pointer (W));
   end;


end;
