Program A4_case ;
Var
a, b: char;
base, alt, comp, lad: real;
areat, areaq: real;
op: integer;
Begin
writeln('Insira os dados necess�rios para este exerc�cio: ');
writeln('Insira a base do trinagulo: ');
readln(base);
writeln('Insira a altura do trinagulo: ');
readln(alt);
writeln('Insira o comprimento do quadrado: ');
readln(comp);
writeln('Inisira a largura do quadrado: ');
readln(lad);

writeln('Agora escolha uma destas ope��es: ');
writeln('1: �rea do trinagulo');
writeln('2: �rea do quadrado');
readln(op);
areat:= (base * alt) / 2;
areaq:= comp * lad;
case op of 
	1: writeln('A �rea do trinagulo � de: ',areat);
	2: writeln('A �rea do quadrado � de: ',areaq);	
else
writeln('Escolha n�o v�lida!');
end;  
End.