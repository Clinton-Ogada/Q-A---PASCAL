Program ExamResults;
var
  paper1Prog, paper2Prog, paper1Sys, paper2Sys: char;
  passPaper1, passPaper2: boolean;
begin
  // Prompt the user to input the results obtained in each paper
  writeln('Enter the results obtained in each paper:');
  write('Paper 1 in Programming: ');
  readln(paper1Prog);
  write('Paper 2 in Programming: ');
  readln(paper2Prog);
  write('Paper 1 in Systems Analysis: ');
  readln(paper1Sys);
  write('Paper 2 in Systems Analysis: ');
  readln(paper2Sys);

  // Determine if the candidate passed both paper 1 examinations
  passPaper1 := (paper1Prog = 'P') and (paper1Sys = 'P');

  // Determine if the candidate passed at least one paper 2 examination
  passPaper2 := (paper2Prog = 'P') or (paper2Sys = 'P');

  // Classify the grade based on the results obtained
  if passPaper1 and passPaper2 then
    writeln('Merit')
  else if passPaper1 and (not passPaper2) then
    writeln('Re-sit')
  else if (not passPaper1) or ((paper2Prog = 'N') and (paper2Sys = 'N')) then
    writeln('Fail')
  else
    writeln('Certificate');
end.
