with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   task Temperatura;
   task Humedad;
   t,h:Integer;

   task body Temperatura is
      j:Integer;
   begin
      t:=37;
      j:=t;

         if (t<=20) or (t<37) then
          for j in t..40 loop
             t:=j;
             Put_Line("Temperatura");
             Put(t);
          end loop;
         end if;

         if (t>=37) then
          for j in reverse 17..t loop
             t:=j;
             Put_Line("Temperatura");
             Put(t);
          end loop;
      end if;

   end Temperatura;

    task body Humedad is
      j:Integer;
   begin
      h:=20;
         j:=h;
         if (h<=20) or (h<40) then
            for j in h..40 loop
             h:=j;
             Put_Line("Humedad");
             Put(h);
            end loop;
         end if;

         if (h>=40) then
            for j in reverse 20..h loop
             h:=j;
             Put_Line("Humedad");
             Put(h);
            end loop;
         end if;
   end Humedad;


begin
            if t=37 and h=20 then
               Put_Line("Inicializa el Riego");
            end if;
            if t=17 and  h=40 then
               Put_Line("Apaga el riego");
            end if;

   null;
end Main;
