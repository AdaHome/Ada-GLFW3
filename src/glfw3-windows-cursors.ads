package GLFW3.Windows.Cursors is

   type Cursor_X is new double;
   type Cursor_Y is new double;

   procedure Get_Cursor_Position (W : Window; X : aliased out Cursor_X; Y : aliased out Cursor_Y) with
     Import,
     Convention => C,
     External_Name => "glfwGetCursorPos",
     Pre => W /= Null_Window;

end;
