program gyak;
uses crt;
var nev:string;
      i:integer;

  begin
    clrscr;
    write('K‚rem a nevet: ');
    readln(nev);
    writeln(nev);

    for i:=1 to length(nev) do
     write(nev[i],' ');



   readln;
  end.
