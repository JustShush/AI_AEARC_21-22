Program A3_pas ;
Var
tp, teste, relatorio, media, soma: real;
nome:char;

Begin
writeln('nome do aluno');
readln(nome);
writeln('nota trabalho pr�tico');
readln(tp);
writeln('nota do teste');
readln(teste);
writeln('nota relat�rio');
readln(relatorio);
media:= (tp*(50/100)) + (teste*(30/100)) + (relatorio*(20/100));
writeln('O nome do aluno � ',nome,' e teve uma m�dia de ', media);
End.