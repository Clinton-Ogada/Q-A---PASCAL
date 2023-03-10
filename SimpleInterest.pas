Program SimpleInterest(input,output);
{*Program 1.2 Calculation of simple interest on a principal at a given rate of interest and over a given number of days*}
const
rate=10; {percent}
year = 365;{days}
var
principal, interest, amount:real;
time:integer;
begin
read(principal,time);
interest:=time/year*rate/100*principal;
Writeln('Program 1.2 Computation of simple interest');
writeln('=========================================');
writeln;
writeln('principal =$' ,principal:7:2);
writeln('interset rate= ',rate:4, '%');
writeln('term =',time:4,'days');
writeln;
writeln('interest =$',interest :7:2);
writeln('new value of principal =$',amount:7:2)
end.
