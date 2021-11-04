Program A2_if ;
Var
a, b:real;
Begin
writeln('Insira o primeiro número:');
readln(a);
writeln('Insira o segundo número:');
readln(b);
if(a > b) then
writeln('O maior número é o primeiro número: ', a);
if(b > a) then
writeln('O maior número é o segundo número: ', b);
if(a = b) then
writeln('Os números são iguais');
End.