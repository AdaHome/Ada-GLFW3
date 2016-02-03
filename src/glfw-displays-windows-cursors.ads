package GLFW.Displays.Windows.Cursors is

   type Mouse_X is new double;
   type Mouse_Y is new double;

   procedure Get (W : Window; X : out Mouse_X; Y : out Mouse_Y);


end;
