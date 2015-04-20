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



 {  assign(fajl, 'foglaltsag.txt');
   reset(fajl);

   for i:=1 to 15 do
     readln(fajl, foglaltsag[i]);
   close(fajl);

   writeln('2. feladat:');
   writeln('Melyik sorban?');
   readln(sor);
   writeln('Melyik szek?');
   readln(szek);

   if foglaltsag[sor,szek]='x' then writeln('A hely foglalt')
   else writeln('A hely szabad');


   writeln('3. feladat:');
   eladott:=0;
   for sor:=1 to 15 do
    for szek:=1 to 20 do
      if foglaltsag[sor,szek]='x' then eladott:=eladott+1;

   writeln('Az eloadasra ',eladott,' db jegyet adtak el ez a helyek ',round((eladott/300)*100),'%-a.');

   writeln('4. feladat');
   for i:=1 to 5 do
     katdb[i]:=0;
   for sor:=1 to 15 do
     for szek:=1 to 20 do
       if foglaltsag[sor,szek]='x' then
         begin
           case kategoria[sor,szek] of
             '1':katdb[1]:=katdb[1]+1;
             '2':katdb[2]:=katdb[2]+1;
             '3':katdb[3]:=katdb[3]+1;
             '4':katdb[4]:=katdb[4]+1;
             '5':katdb[5]:=katdb[5]+1;
           end;
         end;      }

   {for i:=1 to 5 do
   writeln('katdb[',i,']=',katdb[i]);}

 {   max:=1;
    for i:=2 to 5 do
      if katdb[i]>katdb[max] then max:=i;
    writeln('A legtobb jegyet a ',max,'. kategoriaban adtak el.');


    writeln('5. feladat');
    szum:=0;
    szum:=szum+katdb[1]*5000;
    szum:=szum+katdb[2]*4000;
    szum:=szum+katdb[3]*3000;
    szum:=szum+katdb[4]*2000;
    szum:=szum+katdb[5]*1500;
    writeln('Az aktualis bevetel ',szum,' ft.');

    writeln('6.feladat');
    db:=0;
    for sor:=1 to 15 do
     for szek:=1 to 20 do
       if foglaltsag[sor,szek]='o' then
         begin
          if (szek=1) and (foglaltsag[sor,2]='x') then inc(db);
          if (szek=20) and (foglaltsag[sor,19]='x') then inc(db);
          if (szek>1) and (szek<20) and (foglaltsag[sor,szek-1]='x')
            and (foglaltsag[sor,szek+1]='x') then inc(db);
         end;
    writeln('Egyedulallo ures hely: ',db);

   writeln('7. feladat');
   assign(ki,'szabad.txt');
   rewrite(ki);
   for sor:=1 to 15 do
     begin
      for szek:=1 to 20 do
        if foglaltsag[sor,szek]='x' then write(ki,'x')
        else write(ki,kategoria[sor,szek]);
      writeln(ki);
     end;
   close(ki);     }

  readln;
end.
