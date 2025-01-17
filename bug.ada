procedure Example is
   My_Array : array (1..10) of Integer := (1,2,3,4,5,6,7,8,9,10);
begin
   for I in My_Array'Range loop
      if My_Array(I) = 5 then
         exit;
      end if;
   end loop;
   -- Accessing My_Array(I) after the loop may cause an error because 'I' is uninitialized if 5 is not in the array
   Put_Line(My_Array(I));
 exception
   when others =>
      Put_Line("Error occurred");
end Example;