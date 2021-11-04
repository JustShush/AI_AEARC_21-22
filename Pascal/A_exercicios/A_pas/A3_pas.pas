Program A3_pas ;
Var
tp, teste, relatorio, media, soma: real;
nome:char;

Begin
writeln('nome do aluno');
readln(nome);
writeln('nota trabalho prático');
readln(tp);
writeln('nota do teste');
readln(teste);
writeln('nota relatório');
readln(relatorio);
media:= (tp*(50/100)) + (teste*(30/100)) + (relatorio*(20/100));
writeln('O nome do aluno é ',nome,' e teve uma média de ', media);
End.