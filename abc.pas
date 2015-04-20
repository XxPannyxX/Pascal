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

  if (szo[i]='x') or (szo[i]='y') or (szo[i]='z') or
     (szo[i]='X') or (szo[i]='Y') or (szo[i]='Z') then
    write(chr(ord(szo[i])-23))
  else
    write(chr(ord(szo[i])+3));

  end;
 readln;
end.

