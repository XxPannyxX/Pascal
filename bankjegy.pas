program oszthatosag;
uses crt;
var x:longint;

  begin
  clrscr;
  writeln('Kerem az erteket');
  readln(x);

  writeln('Az osszeget ', x div 20000,'db 20.000-esre');
  x:= x mod 20000;
  writeln('Az osszeget ', x div 10000,'db 10.000-esre');
  x:= x mod 10000;
  writeln('Az osszeget ', x div 5000,'db 5000-esre');
  x:= x mod 5000;
  writeln('Az osszeget ', x div 2000, 'db 2000-esre');
  x:= x mod 2000;
  writeln('Az osszeget ', x div 1000, 'db 1000-esre');
  x:= x mod 1000;
  writeln('Az osszeget ', x div 500, 'db 500-esre');
  x:= x mod 500;
  writeln('Az osszeget ', x div 200, 'db 200-as ermere');
  x:= x mod 200;
  writeln('Az osszeget ', x div 100, 'db 100-as ermere');
  x:= x mod 100;
  writeln('Az osszeget ', x div 50, 'db 50-es ermere');
  x:= x mod 50;
  writeln('Az osszeget ', x div 20, 'db 20-as ermere');
  x:= x mod 20;
  writeln('Az osszeget ', x div 10, 'db 10-as ermere');
  x:= x mod 10;

//  writeln(x);

  if (x<=2) and (x>=0) then  writeln('Az osszeget lefele kerekitjuk, igy tovabb nem bonthato');
  if (x<=7) and (x>=5) then writeln('Az osszeget ',x div 5 , 'db 5-os ermevel lehet megadni');
  if x=4 then writeln('Az osszeget 1 db 5-os ermevel lehet megadni');
  if x>=8 then writeln('Az osszeget plusz egy db 10-es ‚rm‚vel lehet megadni');




  readln;
  end.
