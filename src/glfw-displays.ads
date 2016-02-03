with GLFW.C;
with System;

package GLFW.Displays is

   use System;
   use GLFW.C;

   type Window is private;
   type Monitor is private;


private

   type Window is record
      Base : GLFWwindow;
   end record with Convention => C;

   type Monitor is record
      Base : GLFWmonitor;
   end record with Convention => C;

   Null_Monitor : Monitor := (Base => Null_Address);
   Null_Window : Window := (Base => Null_Address);

end;
