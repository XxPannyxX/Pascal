program fajlkezeles;
uses crt;
var sorok:array[1..1000] of string;
    ora:array[1..1000] of integer;
    perc:array[1..1000] of integer;
    mp:array[1..1000] of integer;
    rendszam:array[1..1000] of string;

    n,i:integer;
    fajl:text;

begin
  clrscr;
  assign(fajl,'jarmu.txt');
  reset(fajl);


n:=0;

  while not eof(fajl) do
  begin
    n:=n+1;
    readln(fajl,sorok[n]);
    ora[n]:=(((ord(sorok[n,1])-48)*10)+(ord(sorok[n,2])-48));
    perc[n]:=(ord(sorok[n,4])-48)*10+(ord(sorok[n,5])-48);
    mp[n]:=(ord(sorok[n,7])-48)*10+(ord(sorok[n,8])-48);
    rendszam[n]:=copy(sorok[n],10,7);
  end;
  close(fajl);

  for i:=1 to n do
    writeln(ora[i],' ',perc[i],' ', mp[i],' ',rendszam[i]);

  readln;
end.
