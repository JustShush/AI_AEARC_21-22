Program A5_pas ;
const
comp = 50;

var
alt, area: real;

Begin
writeln('Vamos calcular a área de um retângulo.');
writeln('Insira a altura do retângulo: ');
readln(alt);
area:= comp * alt;
writeln('A área do retânfulo é: ',area);
End.