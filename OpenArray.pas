program OpenArrayExample;
var
  myArray: array of integer; // declare a dynamic array
  i: integer;

  procedure PrintArray(arr: array of integer);
  var
    j: integer;
  begin
    for j := 0 to High(arr) do
      writeln('Element ', j, ': ', arr[j]);
  end;

begin
  // assign values to the array
  SetLength(myArray, 5); // set the length of the array to 5
  myArray[0] := 10;
  myArray[1] := 20;
  myArray[2] := 30;
  myArray[3] := 40;
  myArray[4] := 50;

  // pass the array to a procedure and print out the elements
  PrintArray(myArray);

  readln;
end.
