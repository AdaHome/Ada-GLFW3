with Ada.Unchecked_Conversion;

package body GLFW.Displays.Windows.Drops is


   procedure Set (W : Window; P : Drop_Procedure) is
      function Convert is new Ada.Unchecked_Conversion (Drop_Procedure, Address);
   begin
      glfwSetDropCallback (W.Base, Convert (P));
   end;


end;
