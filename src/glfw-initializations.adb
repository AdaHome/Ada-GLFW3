with GLFW.C;
with Interfaces.C;

package body GLFW.Initializations is

   procedure Initialize is
      use Interfaces.C;
      use GLFW.C;
      subtype One_To_One is int range 1 .. 1;
      I : One_To_One;
   begin
      I := glfwInit;
   end;


end;
