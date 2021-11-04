Program A3_case ;
Var
num1, num2, escolha, num: integer;
soma, sub, divisao, multi: real;
Begin
writeln('Insira dois números.');
writeln('Insira o primeiro número:');
readln(num1);
writeln('Insira o segundo número: ');
read(num2);
writeln('Agora escolha uma destas opeções: ');
writeln('1: Adição');
writeln('2: Subtração');
writeln('3: Divisão');
writeln('4: Multiplicação');
read(escolha);
soma:= num1 + num2;
sub:= num1 - num2;
divisao:= num1 / num2;
multi:= num1 * num2;
case escolha of
	1: writeln(soma);
	2: writeln(sub);
	3: writeln(divisao);
	4: writeln(multi);
else
writeln('Escolha não válida!');
end;  
End.