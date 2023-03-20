Program CirclePerimeter(i,o);
const PI = 3.142; //initialise constant PI
var
radius,     // radius of a circle
perimeter: real;  //perimeter of a circle
begin
writeln('Please enter the radius of a circle-->');
readln(radius);   // get radius from keyboard
perimeter:= 2 * PI * radius; //Find the Perimeter
writeln('The perimeter of the circle is', perimeter :4:2);
readln;
end.
