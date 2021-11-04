Program A6_pas ;
Var
a, b, c: real;

Begin
writeln('Insira o valor de A: ');
readln(a);
writeln('Insira o valor de B: ');
readln(b);
c:= a;
a:= b;
b:= c;
writeln('A letra A passou para ',a,' e a letra B passou para ',b); 
End.