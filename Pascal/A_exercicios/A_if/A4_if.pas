Program A4_if ;
Var
num1, num2, soma: real;
Begin
writeln('Insira o primeiro n�mero:');
readln(num1);
writeln('Insira o segundo n�mero:');
readln(num2);
soma:= num1 + num2;
if(soma >= 10)then
writeln('O valor somado � maior que 10, e depois de somar 5 o valor � igual a ', soma + 5)
else
writeln('O valor somado � menos que 10, e depois de subtrair por 7 o valor � igual a ', soma - 7);
End.