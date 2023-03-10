Program YearCheck(input, output);
{*This program reads a number representing a year and calculates whether it is a century year or a leap year*}
//Century years are only leap years if they are divisible by 400
{*Written by Clinton Ogada v1*}
var
  year: integer;
begin
  // Prompt the user to enter a year
  writeln('Enter a year: ');
  readln(year);
  // Check if the year is a century year
  if year mod 100 = 0 then
  begin
    writeln('The year is a century year.');

    // Check if the century year is a leap year
    if year mod 400 = 0 then
      writeln('The year is a leap year.')
    else
      writeln('The year is not a leap year.');
  end
  else
  begin
    // Check if the year is a leap year
    if (year mod 4 = 0) and (year mod 100 <> 0) or (year mod 400 = 0) then
      writeln('The year is a leap year.')
    else
      writeln('The year is not a leap year.');
  end;
end.
