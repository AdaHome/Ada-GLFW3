with System;
with Interfaces.C;
with System.Storage_Elements;

package GLFW3 is

   pragma Pure;


   use System;
   use Interfaces.C;
   use System.Storage_Elements;

   type Window is private;
   type Monitor is private;

   --pragma Preelaborable_Initialization (Window);

   procedure Initialize;
   procedure Terminate_GLFW3 with
     Import,
     Convention => C,
     External_Name => "glfwTerminate";

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

   type Window is new Integer_Address;
   type Monitor is new Integer_Address;
   type Procedure_Address is new Integer_Address;



end;
