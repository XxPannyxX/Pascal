program telek;
uses crt;
var osszadat:array[1..32] of string;
   joletsortelekhossz:array[1..32, 1..3] of integer;
    n,i,j,hazszam,szelesseg,hosszusag:integer;
    fajl:text;

begin
clrscr;
   writeln('Harmadik feladat:');
   assign(fajl, 'telek.txt');
   reset(fajl);

   n:=2;
   while not eof(fajl) do
    begin
      n:=n+1;
      readln(fajl, osszadat[n]);
      joletsortelekhossz[n]:=(copy(osszadat[n],2]
    end;
   close(fajl);



  n:=0;
  for i:=1 to length(ossztelek) do
    n:=n+ossztelek[i,2];
  writeln('Az osszes telek hossza:',n);
  readln;
end.
