Program A3_case ;
Var
num1, num2, escolha, num: integer;
soma, sub, divisao, multi: real;
Begin
writeln('Insira dois n�meros.');
writeln('Insira o primeiro n�mero:');
readln(num1);
writeln('Insira o segundo n�mero: ');
read(num2);
writeln('Agora escolha uma destas ope��es: ');
writeln('1: Adi��o');
writeln('2: Subtra��o');
writeln('3: Divis�o');
writeln('4: Multiplica��o');
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
writeln('Escolha n�o v�lida!');
end;  
End.