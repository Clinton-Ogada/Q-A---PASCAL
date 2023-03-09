program CalculateCircleArea;

uses
  crt;

const
  PI = 3.14159;

var
  radius: real;
  area: real;

function CalculateArea(r: real): real;
begin
  CalculateArea := PI * r * r;
end;

begin
  clrscr;
  writeln('Welcome to the Circle Area Calculator');
  writeln('-------------------------------------');
  writeln;

  write('Enter the radius of the circle: ');
  readln(radius);

  area := CalculateArea(radius);

  writeln('The area of the circle with radius ', radius:0:2, ' is ', area:0:2);
  readln;
end.
