Program ScissorsPaperStone(input,output);
{*Here is my Comment...*}
var
  player1, player2: char;
begin
  // Prompt the players to make their choices
  writeln('Player 1, choose scissors (X), paper (P), or stone (O): ');
  readln(player1);
  writeln('Player 2, choose scissors (X), paper (P), or stone (O): ');
  readln(player2);
  // Determine the result based on the players' choices
  if (player1 = 'X') and (player2 = 'P') then
    writeln('Player 2 wins!')
  else if (player1 = 'P') and (player2 = 'O') then
    writeln('Player 1 wins!')
  else if (player1 = 'O') and (player2 = 'X') then
    writeln('Player 1 wins!')
  else if player1 = player2 then
    writeln('It is a tie!')
  else
    writeln('Player 2 wins!');
end.
