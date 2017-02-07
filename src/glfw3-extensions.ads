with System.Storage_Elements;

package GLFW3.Extensions is

   use System.Storage_Elements;

   type Procedure_Address is private;
   subtype Procedure_Name is char_array;
   Null_Procedure_Address : constant Procedure_Address;
   GLFW_NO_CURRENT_CONTEXT : constant Procedure_Address;

   pragma Warnings (Off);
   function Get_Procedure_Address (Name : Procedure_Name) return Procedure_Address with
     Import,
     Convention => C,
     External_Name => "glfwGetProcAddress",
     Pre => Name (Name'First .. Name'First + 1) = "gl",
     Post => Get_Procedure_Address'Result /= Null_Procedure_Address;
   pragma Warnings (On);

   function Get_Procedure_Address (Name : String) return Procedure_Address;
   function To_Address (Name : Procedure_Address) return Address;

private

   type Procedure_Address is new Integer_Address;

   Null_Procedure_Address : constant Procedure_Address := 0;
   GLFW_NO_CURRENT_CONTEXT : constant Procedure_Address := 16#00010002#;

end;
