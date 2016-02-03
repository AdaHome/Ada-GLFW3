package GLFW3.Monitors is

   type Monitor_Width is new int with Convention => C;

   type Monitor_Height is new int with Convention => C;

   type Video_Mode is record
      Width        : aliased Monitor_Width;
      Height       : aliased Monitor_Height;
      Red_Bits     : aliased int;
      Green_Bits   : aliased int;
      Blue_Bits    : aliased int;
      Refresh_Rate : aliased int;
   end record with Convention => C;

   type Video_Mode_Access is access all Video_Mode with Convention => C;

   function Get_Primary_Monitor return Monitor with
     Import,
     Convention => C,
     External_Name => "glfwGetPrimaryMonitor";

   function Get_Video_Mode (M : Monitor) return Video_Mode_Access with
     Import,
     Convention => C,
     External_Name => "glfwGetVideoMode";

private




end;
