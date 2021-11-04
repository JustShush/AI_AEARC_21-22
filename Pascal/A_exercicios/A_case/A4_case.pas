Program A4_case ;
Var
a, b: char;
base, alt, comp, lad: real;
areat, areaq: real;
op: integer;
Begin
writeln('Insira os dados necessários para este exercício: ');
writeln('Insira a base do trinagulo: ');
readln(base);
writeln('Insira a altura do trinagulo: ');
readln(alt);
writeln('Insira o comprimento do quadrado: ');
readln(comp);
writeln('Inisira a largura do quadrado: ');
readln(lad);

writeln('Agora escolha uma destas opeções: ');
writeln('1: Área do trinagulo');
writeln('2: Área do quadrado');
readln(op);
areat:= (base * alt) / 2;
areaq:= comp * lad;
case op of 
	1: writeln('A área do trinagulo é de: ',areat);
	2: writeln('A área do quadrado é de: ',areaq);	
else
writeln('Escolha não válida!');
end;  
End.