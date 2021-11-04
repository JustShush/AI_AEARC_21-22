Program A5_case ;
Var
num1, num2, raiz, quad: real;
op, r: integer;
Begin
writeln('Insira um número: ');
readln(num1);
raiz:= sqrt(num1); // SQRT é para calcular a raiz quadrada de um número
quad:= sqr(num1);  // SQR é para calcular o quadrado de um número
r:= random(100) + 0; // gera um número aleatório

writeln('Agora escolha uma destas opeções: ');
writeln('1: Vai gerar um número aleatório.');
writeln('2: Vai calcular a raiz quadrada do seu número.');
writeln('3: Vai calcular o quadrado do seu número.');
readln(op);
case op of 
	1: writeln(r);
	2: writeln(raiz);
	3: writeln(quad);
	else
writeln('Escolha não válida!');
end;  
End.