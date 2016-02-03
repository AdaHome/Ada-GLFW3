package GLFW3.Windows is

   type Window_Width is new int;
   type Window_Height is new int;
   type Window_Title is new char_array;
   type Window_Close_Flag is new int;

   pragma Warnings (Off);
   function Create_Window (Width : Window_Width; Height : Window_Height; Title : Window_Title; Primary : Monitor := Null_Monitor; Share : Window := Null_Window) return Window with
     Import,
     Convention => C,
     External_Name => "glfwCreateWindow",
     Post => Create_Window'Result /= Null_Window;
   pragma Warnings (On);

   procedure Destroy_Window (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwDestroyWindow",
     Pre => W /= Null_Window;


   procedure Make_Context_Current (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwMakeContextCurrent",
     Pre => W /= Null_Window;

   function Window_Should_Close (W : Window) return Window_Close_Flag with
     Import,
     Convention => C,
     External_Name => "glfwWindowShouldClose",
     Pre => W /= Null_Window;

   procedure Swap_Buffers (W : Window) with
     Import,
     Convention => C,
     External_Name => "glfwSwapBuffers",
     Pre => W /= Null_Window;


end;
