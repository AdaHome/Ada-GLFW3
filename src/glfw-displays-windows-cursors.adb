package body GLFW.Displays.Windows.Cursors is

   procedure Get (W : Window; X : out Mouse_X; Y : out Mouse_Y) is
   begin
      glfwGetCursorPos (W.Base, double (X), double (Y));
   end;

end;
