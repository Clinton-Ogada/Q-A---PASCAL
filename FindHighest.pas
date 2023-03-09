program FindHighest;

var
  a, b, c, highest: integer;

procedure DetermineHighest(var x, y, z, highest: integer);
begin
  if (x >= y) and (x >= z) then
    highest := x
  else if (y >= x) and (y >= z) then
    highest := y
  else
    highest := z;
end;

begin
  writeln('Welcome to the Find Highest program');
  writeln('----------------------------------');
  writeln;

  write('Enter the first integer: ');
  readln(a);
  write('Enter the second integer: ');
  readln(b);
  write('Enter the third integer: ');
  readln(c);

  DetermineHighest(a, b, c, highest);

  writeln('The highest integer among ', a, ', ', b, ', and ', c, ' is ', highest);
  readln;
end.
