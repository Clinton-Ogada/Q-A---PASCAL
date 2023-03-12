Program DictionaryOrder;
var
  word1, word2: string;
begin
  write('Enter the first word (up to four letters): ');
  readln(word1);
    write('Enter the second word (up to four letters): ');
  readln(word2);
    if word1 < word2 then
    writeln('The words are in dictionary order.')
  else if word1 = word2 then
    writeln('The words are the same.')
  else
    writeln('The words are not in dictionary order.');
end.
