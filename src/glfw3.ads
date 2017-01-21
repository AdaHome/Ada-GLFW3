with System;
with Interfaces.C;

package GLFW3 is

   use System;
   use Interfaces.C;

   type Window is private;
   type Monitor is private;



   Null_Window : constant Window;
   Null_Monitor : constant Monitor;


   procedure Initialize;

   procedure Poll_Events with
     Import,
     Convention => C,
     External_Name => "glfwPollEvents";

   procedure Wait_Events with
     Import,
     Convention => C,
     External_Name => "glfwWaitEvents";

   function Clock return double with
     Import,
     Convention => C,
     External_Name => "glfwGetTime";


private

   type Window is new Address;
   type Monitor is new Address;
   type Procedure_Address is new Address;

   Null_Window : constant Window := Window (Null_Address);
   Null_Monitor : constant Monitor := Monitor (Null_Address);

end;
