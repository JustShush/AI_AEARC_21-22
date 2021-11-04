Program A3_if ;
Var
nome, disciplina: string;
nota1, nota2, nota3, media, soma: real;
Begin
write('Insira o nome do aluno: ');
read(nome);
write('O nome da disciplina: ');
read(disciplina);
write('Insira a nota do primerio periodo: ');
read(nota1);
write('Insira a nota do segundo periodo: ');
read(nota2);
write('Insira a nota do terceiro periodo: ');
read(nota3);
media:= (nota1 + nota2 + nota3) / 3; 
if(media > 9.5)then
writeln('O aluno: ', nome,' da  disciplina de ', disciplina,' teve uma média de: ', media,' logo o aluno foi aprovado!')
else
writeln('O aluno: ', nome,' da  disciplina de ', disciplina,' teve uma média de: ', media,' logo o aluno não foi aprovado!');
End.