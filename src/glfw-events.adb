with GLFW.C;

package body GLFW.Events is

   use GLFW.C;

   procedure Poll is
   begin
      glfwPollEvents;
   end;


   procedure Wait is
   begin
      glfwWaitEvents;
   end;

end;
