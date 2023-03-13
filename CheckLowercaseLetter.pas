program CheckLowercaseLetter;

var
  character: Char;
  letter: Boolean;

begin
  writeln('Enter a character:');
  readln(character);

  letter := (character >= 'a') and (character <= 'z');

  if letter then
    writeln(character, ' is a lowercase letter.')
  else
    writeln(character, ' is not a lowercase letter.');

  readln;
end.
