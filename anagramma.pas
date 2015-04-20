program anagramma;
uses crt;
var szotar:array[1..300] of string;
    szavakszama:integer;
    katdb:array[1..5] of integer;
    i,s,n,k,j,karakterek:integer;
    cs:char;
    max,szum,db:longint;
    szoveg:string;
    fajl,ki:text;

begin
clrscr;

   writeln('1.feladat');
   writeln('Adja meg a szoveget: ');
   readln(szoveg);
   karakterek:=0;
   for i:=1 to length(szoveg) do
     begin
       j:=1;
       while (j<i) and (szoveg[i]<>szoveg[j]) do
         j:=j+1;
       if (j>=i) then
         begin
           karakterek:=karakterek+1;
           write(szoveg[i],',');
         end;
     end;
     writeln('Az osszes karakter:',karakterek);


 writeln('Masodik feladat:');

   assign(fajl, 'szotar.txt');
   reset(fajl);       //csak olvas sra nyitja meg

   szavakszama:=0;

   while (not eof(fajl)) do
   begin
     szavakszama:=szavakszama+1;
     readln(fajl, szotar[szavakszama]);
   end;
   close(fajl);

   writeln('Harmadik feladat:');
    for i:=1 to szavakszama do
     begin
       szoveg:=szotar[i];
       for j:=1 to length(szoveg)-1 do
          for k:=j+1 to length(szoveg) do
            if szoveg[j]>szoveg[k] then
              begin
                cs:=szoveg[j];
                szoveg[j]:=szoveg[k];
                szoveg[k]:=cs;
              end;
       writeln(szoveg);
     end;


   readln;
end.
