program abc;
uses crt;
var szo:string;
  i:integer;


 begin
 clrscr;
 writeln('Kerem a szot');
 readln(szo);
 for i:=1 to length(szo) do
  begin

  if ((szo[i]>='X') and (szo[i]<='Z')) or ((szo[i]>='x') and (szo[i]<='z')) then
    write(chr(ord(szo[i])-23))
  else
    write(chr(ord(szo[i])+3));

  end;
 readln;
end.

