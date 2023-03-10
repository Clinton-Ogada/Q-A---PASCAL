Program CVCWordCheck(input,output;

// Define the functions to check if a letter is a consonant or a vowel
function IsConsonant(letter: char): boolean;
begin
  IsConsonant := not (letter in ['a', 'e', 'i', 'o', 'u']);
end;

function IsVowel(letter: char): boolean;
begin
  IsVowel := letter in ['a', 'e', 'i', 'o', 'u'];
end;

var
  letter1, letter2, letter3: char;

begin
  // Prompt the user to enter three letters
  writeln('Enter three letters: ');
  readln(letter1);
  readln(letter2);
  readln(letter3);
  
  // Check if the letters form a CVC word
  if (IsConsonant(letter1) and IsVowel(letter2) and IsConsonant(letter3)) then
    writeln('The letters form a CVC word.')
  else
    writeln('The letters do not form a CVC word.');

  readln; // Wait for the user to press Enter
end.
