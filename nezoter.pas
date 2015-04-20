program nezoter;
uses crt;
var foglaltsag:array[1..15] of string;
    kategoria:array[1..15] of string;
    katdb:array[1..5] of integer;
    i,eladott,n:byte;
    max,szum,db:longint;
    sor,szek:byte;
    fajl,ki:text;

begin
clrscr;

   assign(fajl, 'kategoria.txt');
   reset(fajl);

   for i:=1 to 15 do
     readln(fajl, kategoria[i]);
   close(fajl);


   assign(fajl, 'foglaltsag.txt');
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
         end;

   {for i:=1 to 5 do
   writeln('katdb[',i,']=',katdb[i]);}

    max:=1;
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
   close(ki);

  readln;
end.
