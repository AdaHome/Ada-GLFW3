with Interfaces.C;

package GLFW3 is

   use Interfaces.C;

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





end;
