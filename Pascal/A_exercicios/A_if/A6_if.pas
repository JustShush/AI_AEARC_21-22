Program A6_if ;
Var
idade: integer;
altura, peso, pesgramcm: real;
nome: string;
Begin
writeln('Insira o seu nome: ');
readln(nome);
writeln('Insira a sua altura: ');
readln(altura);
writeln('Insira a sua idade: ');
readln(idade);
writeln('Insira o seu peso: ');
readln(peso);
pesgramcm:= (peso * 1000) / (altura * 100);
writeln('Olá ', nome,' já sei que tem ', idade,' anos e o seu peso em gramas é ', pesgramcm);
End.