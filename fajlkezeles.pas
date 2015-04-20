program fajlkezeles;
uses crt;
var sorok:array[0..1000] of string;

    n:integer;
    fajl:text;

begin
  clrscr;
  assign(fajl,'nevek.txt');
  reset(fajl);


n:=0;

  while not eof(fajl) do
  begin
    n:=n+1;
    readln(fajl,sorok[n]);
    writeln(sorok[n]);
  end;




  close(fajl);
  readln;
end.
