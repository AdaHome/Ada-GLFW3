package body GLFW.Displays.Monitors is

   function Get_Primary return Monitor is
   begin
      return (Base => glfwGetPrimaryMonitor);
   end;

   function Get (M : Monitor) return Video_Mode is
      A : Address := glfwGetVideoMode (M.Base);
      V : Video_Mode;
      for V'Address use A;
   begin
      return V;
   end;

end;
