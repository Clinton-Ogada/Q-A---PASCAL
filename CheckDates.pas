Program CheckDates;

var
  day1, month1, year1, day2, month2, year2: integer;
  date1, date2: string;

begin
  { Read in the first date }
  writeln('Enter the first date in the format DD/MM/YYYY: ');
  readln(date1);
  val(copy(date1, 1, 2), day1);
  val(copy(date1, 4, 2), month1);
  val(copy(date1, 7, 4), year1);

  { Read in the second date }
  writeln('Enter the second date in the format DD/MM/YYYY: ');
  readln(date2);
  val(copy(date2, 1, 2), day2);
  val(copy(date2, 4, 2), month2);
  val(copy(date2, 7, 4), year2);

  { Check if the dates are in chronological order }
  if year1 < year2 then
    writeln('The dates are in chronological order.')
  else if year1 > year2 then
    writeln('The dates are not in chronological order.')
  else if month1 < month2 then
    writeln('The dates are in chronological order.')
  else if month1 > month2 then
    writeln('The dates are not in chronological order.')
  else if day1 < day2 then
    writeln('The dates are in chronological order.')
  else if day1 > day2 then
    writeln('The dates are not in chronological order.')
  else
    writeln('The dates are the same.');
end.
