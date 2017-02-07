package body GLFW3.Extensions is

   function Get_Procedure_Address (Name : String) return Procedure_Address is
   begin
      return Get_Procedure_Address (To_C (Name));
   end;

   function To_Address (Name : Procedure_Address) return Address is
   begin
      return System.Storage_Elements.To_Address (Integer_Address (Name));
   end;

end;
