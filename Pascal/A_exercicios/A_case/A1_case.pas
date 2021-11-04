Program A1_case ;
Var
num1, num2: real;
Begin
writeln('Insira o primeiro número: ');
readln(num1);
writeln('Insirta o segundo número: ');
readln(num2);
if(num1 < num2)then
writeln(num1, '<', num2);
if(num1 > num2)then
writeln(num2, '<', num1);
End.