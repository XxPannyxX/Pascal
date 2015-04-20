program szemelyiszam;
uses crt;
var szam:string;

begin
  clrscr;
  writeln('Kerem a szemyeli szamot');
  readln(szam);

  if szam[1]='1' then
    writeln('Ferfi')
  else
    writeln('No');

  write('A szletei datum:');
  if (copy(szam,3,2)>='00') and (copy(szam,3,2)<='15') then
    write('20')
  else
    write('19');

  writeln(copy(szam,3,2),'-',copy(szam,5,2),'-',copy(szam,7,2));

  readln;
end.