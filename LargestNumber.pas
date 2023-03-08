program LargestNumber;
var
   num1, num2, num3, largest: integer;
begin
   writeln('Enter three integer values:');
   readln(num1, num2, num3);
   
   if (num1 > num2) and (num1 > num3) then
      largest := num1
   else if (num2 > num1) and (num2 > num3) then
      largest := num2
   else
      largest := num3;
   
   writeln('The largest number is: ', largest);
end.
