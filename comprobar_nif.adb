with Ada.Text_Io, Ada.Integer_Text_Io;
use Ada.Text_Io, Ada.Integer_Text_Io;

procedure Comprobar_Nif is

   Dni : Integer;

   function Calcular_Letra (
         N : Integer)
     return Character is
      subtype Rango_Letras is Integer range 0..22;
      Tabla_Letras : constant
      array(Rango_Letras) of Character := "TRWAGMYFPDXBNJZSQVHLCKE";
   begin
      return Tabla_Letras(N mod 23);
   end Calcular_Letra;
   
   function Numero_Correcto (
         N : Integer)
         return Boolean is
   begin
      
      return (N <= 1000000000 and N >= 0);
   end Numero_Correcto;

begin

   Put("Introduce el numero de DNI: ");
   Get(Dni);
   if Numero_Correcto(dni) then
      Put_Line("La letra que corresponde a este dni es "&Calcular_Letra(Dni));
      else raise constraint_error;
   end if;
   
exception
   when others => put_line("ERROR!!! No has introducido un numero de DNI");
end Comprobar_Nif;