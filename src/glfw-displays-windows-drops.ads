with Interfaces.C.Strings;

package GLFW.Displays.Windows.Drops is

   use Interfaces.C.Strings;

   type Drop_Procedure is access procedure (W : Window; Count : int; Paths : chars_ptr_array)
     with Convention => C;

   procedure Set (W : Window; P : Drop_Procedure);

end;
