program QuadraticEquation;

var
  a, b, c, discriminant, x1, x2: real;

begin
  write('Enter the value of a: ');
  readln(a);
  write('Enter the value of b: ');
  readln(b);
  write('Enter the value of c: ');
  readln(c);

  discriminant := b*b - 4*a*c;

  if discriminant = 0 then
  begin
    x1 := -b/(2*a);
    x2 := x1;
    writeln('The equation has two values: x1 = ', x1:0:2, ', x2 = ', x2:0:2);
  end
  else if discriminant > 0 then
  begin
    x1 := (-b + sqrt(discriminant))/(2*a);
    x2 := (-b - sqrt(discriminant))/(2*a);
    writeln('The equation has two distinct values: x1 = ', x1:0:2, ', x2 = ', x2:0:2);
  end
  else
  begin
    writeln('The equation has no roots.');
  end;

  readln;
end
