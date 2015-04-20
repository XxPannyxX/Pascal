program oszthatosag;
uses crt;
var x:integer;

  begin
  clrscr;
  writeln('Kerem az erteket');
  readln(x);

  writeln('Ezres: ', x div 1000,'db');
  x:= x mod 1000;
  writeln('Szazas: ', x div 100,'db');
  x:= x mod 100;
  writeln('Tizes: ', x div 10,'db');
  x:= x mod 10;
  writeln('Egyes: ', x, 'db');



  readln;
  end.