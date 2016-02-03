package body GLFW.Displays.Windows.Keys is

   function Get (W : Window; A : Key) return Action is
   begin
      return Action'Enum_Val (glfwGetKey (W.Base, A'Enum_Rep));
   end;

end;
