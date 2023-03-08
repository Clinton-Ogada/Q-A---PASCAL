program StaticArrayExample;
var
  myArray: array[1..5] of integer; // declare a static array of size 5
  i: integer;
begin
  // assign values to the array
  myArray[1] := 10;
  myArray[2] := 20;
  myArray[3] := 30;
  myArray[4] := 40;
  myArray[5] := 50;

  // print out the array elements
  for i := 1 to 5 do
    writeln('Element ', i, ': ', myArray[i]);

  readln;
end.
