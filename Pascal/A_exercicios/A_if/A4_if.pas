Program A4_if ;
Var
num1, num2, soma: real;
Begin
writeln('Insira o primeiro número:');
readln(num1);
writeln('Insira o segundo número:');
readln(num2);
soma:= num1 + num2;
if(soma >= 10)then
writeln('O valor somado é maior que 10, e depois de somar 5 o valor é igual a ', soma + 5)
else
writeln('O valor somado é menos que 10, e depois de subtrair por 7 o valor é igual a ', soma - 7);
End.