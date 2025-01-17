procedure Example is
   My_Array : array (1..10) of Integer := (1,2,3,4,5,6,7,8,9,10);
   I : Integer := My_Array'First; -- Initialize I
begin
   for J in My_Array'Range loop
      if My_Array(J) = 5 then
         I := J; -- Assign I if 5 is found
         exit;
      end if;
   end loop;
   -- Check if I was assigned a valid index
   if I in My_Array'Range then
       Put_Line(My_Array(I));
   else
       Put_Line("5 not found in array");
   end if;
 exception
   when others =>
      Put_Line("Error occurred");
end Example;