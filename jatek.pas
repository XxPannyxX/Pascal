program jatek;
uses crt;
var y,x,u,i:integer;

begin
 clrscr;

 writeln('Jatszunk egy jatekot. Add meg a tartomany 1tol terjedo maximum elemet, majd talald ki melyik szamra gondolt a gep! Talalgatasaid szamat a rendszer szamolja, igy konnyu versenysorrendet felallitani!');

 writeln('Kerem a maximum erteket');
 readln(u);

i:=1;

randomize;
x:=random(u);


writeln(i,'. Proba');
readln(y);

while y<>x do
   begin
     if y>x then writeln('A szam ennel kisebb')
     else writeln('A szam ennel nagyobb');
    i:=i+1;
    writeln(i,'. Proba');
    readln(y);
  end;

  if y=x then  writeln('Talalt!');

readln;
end.