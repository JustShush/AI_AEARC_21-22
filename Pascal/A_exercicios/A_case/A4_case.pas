Program A4_case ;
Var
a, b: char;
base, alt, comp, lad: real;
areat, areaq: real;
op: integer;
Begin
writeln('Escolha uma destas opções: ');
writeln('1: Área do triangulo');
writeln('2: Área do quadrado');
readln(op);

case op of 
	1:Begin
	writeln('Insira os dados necessários para este exercício: ');
	writeln('Insira a base do triangulo: ');
	readln(base);
	writeln('Insira a altura do triangulo: ');
	readln(alt);
	areat:= (base * alt) / 2; 
	writeln('A área do trinagulo é de: ',areat);
	end;
		
	2:Begin
	writeln('Insira os dados necessários para este exercício: ');
	writeln('Insira o comprimento do quadrado: ');
	readln(comp);
	writeln('Inisira a largura do quadrado: ');
	readln(lad);
	areaq:= comp * lad;
	writeln('A área do quadrado é de: ',areaq);
	end;	
	
else
writeln('Escolha não válida!');
end;  
End.
