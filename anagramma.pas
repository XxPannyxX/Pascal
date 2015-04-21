program anagramma;
uses crt;
var szotar:array[1..300] of string;
    szavakszama:integer;
    katdb:array[1..5] of integer;
    i,s,n,k,j,karakterek:integer;
    cs:char;
    max,szum,db:longint;
    szoveg,szo1,szo2:string;
    fajl,ki:text;
    volt:boolean;
    hossz:array[1..300] of string;
    hosszszama:integer;

function abc(szo:string):string;
var cs:char;
    i,j:integer;
begin
  for i:=1 to length(szo)-1 do
    for j:=i+1 to length(szo) do
      if szo[i]>szo[j] then
         begin
           cs:=szo[i];
           szo[i]:=szo[j];
           szo[j]:=cs;
         end;
  abc:=szo;
end;

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
  assign(ki,'abc.txt');
  rewrite(ki);
  for i:=1 to szavakszama do
  begin
    {szoveg:=szotar[i];
    szoveg:=abc(szoveg);  }
    writeln(ki,abc(szotar[i]));
  end;
  close(ki);

  writeln;
  writeln('Negyedik feladat');
  write('Kerem az egyik szot: ');
  readln(szo1);
  write('Kerem a masik szot: ');
  readln(szo2);

  szo1:=abc(szo1);

  szo2:=abc(szo2);
  if szo1=szo2 then writeln('Anagramma')
  else writeln('Nem anagramma');
  writeln;

  writeln('5. feladat');
  write('Kerem a keresendo szot: ');
  readln(szo1);

  volt:=false;
  for i:=1 to szavakszama do
    if abc(szo1)=abc(szotar[i])  then
    begin
      writeln(szotar[i]);
      volt:=true;
    end;

  if  volt=false then
    writeln('Nincs a szotarban anagramma');
  writeln;

  writeln('6. feladat: ');
  s:=0;
  for i:=1 to szavakszama  do
    if length(szotar[i])>s then
     s:=length(szotar[i]);

  hosszszama:=0;
  for i:=1 to szavakszama do
    if length(szotar[i])=s then
      begin
        hosszszama:=hosszszama+1;
        hossz[hosszszama]:=szotar[i];

      end;

  for i:=1 to hosszszama-1 do
    for j:=i+1 to hosszszama do
      if abc(hossz[i])>abc(hossz[j]) then
        begin
           szoveg:=hossz[i];
           hossz[i]:=hossz[j];
           hossz[j]:=szoveg;
        end;

  for i:=1 to hosszszama do
    writeln(hossz[i]);



  readln;
end.
