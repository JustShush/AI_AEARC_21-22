Program A7_if ;
Var
num1,resto:integer;
Begin
writeln(' escreva o primeiro numero') ;
readln (num1)  ;
resto:=(num1 mod 2)  ;
if (resto=0) then
begin 
writeln ('o numero é par') ;
end 
else
writeln ('o numero é impar');
End.