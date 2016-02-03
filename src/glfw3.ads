with System;
with System.Storage_Elements;
with Interfaces.C;

package GLFW3 is

   use System;
   use System.Storage_Elements;
   use Interfaces.C;

   type Window is private;
   type Monitor is private;
   subtype Procedure_Name is char_array;
   subtype Procedure_Address is Address;

   Null_Window : constant Window;
   Null_Monitor : constant Monitor;
   Null_Procedure_Address : constant Procedure_Address := Address (Null_Address);

   procedure Initialize;

   procedure Poll_Events with
     Import,
     Convention => C,
     External_Name => "glfwPollEvents";

   procedure Wait_Events with
     Import,
     Convention => C,
     External_Name => "glfwWaitEvents";

   pragma Warnings (Off);
   function Get_Procedure_Address (Name : Procedure_Name) return Procedure_Address with
     Import,
     Convention => C,
     External_Name => "glfwGetProcAddress",
     Pre => Name (Name'First .. Name'First + 1) = "gl",
     Post => Get_Procedure_Address'Result /= Null_Address;
   pragma Warnings (On);


   GLFW_NO_CURRENT_CONTEXT : constant Procedure_Address := To_Address (16#00010002#);

private

   type Window is new Address;
   type Monitor is new Address;

   Null_Window : constant Window := Window (Null_Address);
   Null_Monitor : constant Monitor := Monitor (Null_Address);

end;
