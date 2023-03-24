program circle;

const
   pie = 3.14159;

var
   r, area, circ: real;

function circleArea(r: real): real;
begin
   circleArea := pie * sqr(r);
end;

procedure displayOutput(r, area, circ: real);
begin
   writeln('Radius: ', r:0:2);
   writeln('Area: ', area:0:2);
   writeln('Circumference: ', circ:0:2);
end;

begin
   // get radius from user input
   write('Enter the radius of the circle: ');
   readln(r);
   
   // calculate area and circumference using function
   area := circleArea(r);
   circ := 2 * pie * r;
   
   // display output using procedure
   displayOutput(r, area, circ);
end.
