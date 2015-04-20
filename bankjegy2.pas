program oszthatosag;
uses crt;
var x:longint;
    y,z:integer;

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
//  writeln('Az osszeget ', x div 10, 'db 10-as ermere');
 y:=x div 10;
  x:= x mod 10;


//  writeln(x);

  if (X=8) or (x=9) then
   begin
   y:=y+1;
   x:=0;
   end;
   writeln('Az osszeget ' , y,'db 10-es ermevel');

   if (x>=3) and (x<=7) then
     writeln('Az osszeget 1 db 5-os ermevel lehet megadni')
   else
     writeln ('Az osszeget nem lehet tovabb bontani');



  readln;
  end.
