program csere;
uses crt;
var szoveg:string;
    i,kod:integer;

begin
  clrscr;
  writeln('kerek egy szoveget');
  readln(szoveg);


  for i:=1 to length(szoveg) do
  begin
    kod:=ord(szoveg[i]);
    if ((kod<=47) or (kod>=123)) and (kod<>32) then szoveg[i]:='*';
    if (kod>=58) and (kod<=64) then szoveg[i]:='*';
    if (kod>=91) and (kod<=96) then szoveg[i]:='*';
    if szoveg[i]=' ' then szoveg[i]:='_';
  end;

  writeln('A kodolt szoveg: ' ,szoveg);

  readln;
end.