program Equivalent(input, output);

var
  name: string[15];
  marks: real;

begin
  writeln('Enter name');
  readln(name);
  writeln('Enter marks');
  readln(marks);
  writeln('Your name is ', name, ' and your marks are: ', marks:0:2);
  readln;
end.
