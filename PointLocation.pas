Program PointLocation;
var
   x1, y1, x2, y2, x3, y3, xp, yp: real;
procedure ReadCoordinates;
begin
   writeln('Enter the coordinates of the vertices of the triangle:');
   write('x1: '); readln(x1);
   write('y1: '); readln(y1);
   write('x2: '); readln(x2);
   write('y2: '); readln(y2);
   write('x3: '); readln(x3);
   write('y3: '); readln(y3);
   writeln('Enter the coordinates of the point:');
   write('xp: '); readln(xp);
   write('yp: '); readln(yp);
end;

function Area(x1, y1, x2, y2, x3, y3: real): real;
begin
   Area := abs((x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2))/2);
end;

function IsInside(x1, y1, x2, y2, x3, y3, xp, yp: real): boolean;
var
   a, a1, a2, a3: real;
begin
   a := Area(x1, y1, x2, y2, x3, y3);
   a1 := Area(xp, yp, x2, y2, x3, y3);
   a2 := Area(x1, y1, xp, yp, x3, y3);
   a3 := Area(x1, y1, x2, y2, xp, yp);
   IsInside := abs(a - a1 - a2 - a3) < 0.0001;
end;

function IsOn(x1, y1, x2, y2, x3, y3, xp, yp: real): boolean;
begin
   IsOn := (Area(x1, y1, x2, y2, xp, yp) +
            Area(x1, y1, xp, yp, x3, y3) +
            Area(xp, yp, x2, y2, x3, y3)) = Area(x1, y1, x2, y2, x3, y3);
end;

begin
   ReadCoordinates;
   if IsInside(x1, y1, x2, y2, x3, y3, xp, yp) then
      writeln('The point is inside the triangle.')
   else if IsOn(x1, y1, x2, y2, x3, y3, xp, yp) then
      writeln('The point is on the edge of the triangle.')
   else
      writeln('The point is outside the triangle.');
end.
