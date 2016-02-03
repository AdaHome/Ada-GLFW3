with Interfaces.C;

package GLFW.Displays.Windows is

   use Interfaces.C;

   type Close_Flag is new int;

   procedure Swap_Buffers (W : Window);
   procedure Destroy (W : Window);
   function Closing (W : Window) return Close_Flag;
   function Create (Width : Natural; Height : Natural; Title : char_array) return Window;
   function Create (Width : Natural; Height : Natural; Title : char_array; Primary : Monitor) return Window;
   function Create (Width : Natural; Height : Natural; Title : char_array; Share : Window) return Window;
   function Create (Width : Natural; Height : Natural; Title : char_array; Primary : Monitor; Share : Window) return Window;
   procedure Make_Context_Current (W : Window);

end;
