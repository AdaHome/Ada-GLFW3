with Interfaces.C;

package GLFW.Displays.Monitors is

   use Interfaces.C;

   type Video_Mode is record
      Width        : int;
      Height       : int;
      Red_Bits     : int;
      Green_Bits   : int;
      Blue_Bits    : int;
      Refresh_Rate : int;
   end record with Convention => C;

   function Get_Primary return Monitor;
   function Get (M : Monitor) return Video_Mode;

end;
