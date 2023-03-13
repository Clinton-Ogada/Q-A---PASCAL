Program CharNumeric(input,output);
var
  digit1, digit2: Char;
  number: Integer;

  begin
writeln('Enter two digits:');
readln(digit1, digit2);

number := (Ord(digit1) - Ord('0')) * 10 + (Ord(digit2) - Ord('0'));

writeln('The number is:', number);
readln;

end.
