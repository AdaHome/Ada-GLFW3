package body GLFW3 is

   function Initialize return int with
     Import,
     Convention => C,
     External_Name => "glfwInit",
     Post => Initialize'Result = 1;

   procedure Initialize is
      I : int;
   begin
      I := Initialize;
   end;

end;
