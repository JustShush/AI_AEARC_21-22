Program A5_case ;
Var
num1, num2, raiz, quad: real;
op, r: integer;
Begin
writeln('Insira um n�mero: ');
readln(num1);
raiz:= sqrt(num1); // SQRT � para calcular a raiz quadrada de um n�mero
quad:= sqr(num1);  // SQR � para calcular o quadrado de um n�mero
r:= random(100) + 0; // gera um n�mero aleat�rio

writeln('Agora escolha uma destas ope��es: ');
writeln('1: Vai gerar um n�mero aleat�rio.');
writeln('2: Vai calcular a raiz quadrada do seu n�mero.');
writeln('3: Vai calcular o quadrado do seu n�mero.');
readln(op);
case op of 
	1: writeln(r);
	2: writeln(raiz);
	3: writeln(quad);
	else
writeln('Escolha n�o v�lida!');
end;  
End.