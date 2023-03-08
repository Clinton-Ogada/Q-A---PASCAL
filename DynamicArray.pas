program DynamicArrayExample;
var
  myArray: array of integer; // declare a dynamic array
  i: integer;
begin
  // assign values to the array
  SetLength(myArray, 5); // set the length of the array to 5
  myArray[0] := 10;
  myArray[1] := 20;
  myArray[2] := 30;
  myArray[3] := 40;
  myArray[4] := 50;

  // print out the array elements
  for i := 0 to 4 do
    writeln('Element ', i, ': ', myArray[i]);

  readln;
end.
