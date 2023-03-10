Program BragHandClassification;
uses crt;
var
    card1, card2, card3 : string;
    rank1, rank2, rank3 : char;
    suit1, suit2, suit3 : char;
    isFlush, isRun, isPrial, isPair : boolean;

begin
    clrscr;

    // input cards
    writeln('Enter three cards (e.g. 1H 5D TC): ');
    readln(card1);
    readln(card2);
    readln(card3);

    // extract ranks and suits
    rank1 := card1[1];
    suit1 := card1[2];
    rank2 := card2[1];
    suit2 := card2[2];
    rank3 := card3[1];
    suit3 := card3[2];

    // check for flush
    isFlush := (suit1 = suit2) and (suit2 = suit3);

    // check for run
    isRun := (rank1 = chr(ord(rank2) - 1)) and (rank2 = chr(ord(rank3) - 1));

    // check for prial
    isPrial := (rank1 = rank2) and (rank2 = rank3);

    // check for pair
    isPair := (rank1 = rank2) or (rank2 = rank3) or (rank1 = rank3);

    // output classification
    if isPrial then
        writeln('Prial')
    else if isFlush and isRun then
        writeln('Running flush')
    else if isFlush then
        writeln('Flush')
    else if isRun then
        writeln('Run')
    else if isPair then
        writeln('Pair')
    else
        writeln('Bust');

    readln;
end.
