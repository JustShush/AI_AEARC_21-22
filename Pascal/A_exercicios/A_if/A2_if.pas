Program A2_if ;
Var
a, b:real;
Begin
writeln('Insira o primeiro n�mero:');
readln(a);
writeln('Insira o segundo n�mero:');
readln(b);
if(a > b) then
writeln('O maior n�mero � o primeiro n�mero: ', a);
if(b > a) then
writeln('O maior n�mero � o segundo n�mero: ', b);
if(a = b) then
writeln('Os n�meros s�o iguais');
End.