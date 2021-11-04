Program A4_pas ;
Var
r, alt, volume: real;

Begin
writeln('Vamos calcular o volume de uma lata de óleo.');
writeln('O raio da lata:');
readln(r);
writeln('A altura da lata: ');
readln(alt);
volume:= 3.14159 * (r*r) * alt;
writeln('O volume da lata de óleo é: ', volume);
End.