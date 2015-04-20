 program gyak;
 uses crt;
 var nev:string;
   i:integer;
 function karakterszama(nev:string; kar:char):integer;
   var i,k:integer;
   begin
     k:=0;
    for i:=1 to length(nev) do
       if (nev[i]='a') or (nev[i]='A') then k:=k+1;
    karakterszama:=k;
   end;

 begin
        clrscr;
        write('K‚rem a nevet: ');
        readln(nev);

        writeln(nev);
        writeln('A n‚v hossza: ',length(nev));
        writeln;
        for i:=1 to length(nev) do
          writeln(nev[i]);

        writeln;

        writeln('Az a betûk sz ma: ',karakterszama(nev,'A'));
        readln;

 end.
