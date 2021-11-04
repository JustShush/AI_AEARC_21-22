Program A8_if ;
Var
nota1,nota2,nota3,nota4,media1,media2,notaexame:real ;
Begin
Writeln ('Este programa calcula a média de um aluno') ;
writeln ('Introduza a nota 1');
readln (nota1) ;
writeln ('Introduza a nota 2') ;
readln (nota2);
writeln ('Introduza a nota 3');
readln (nota3) ;
writeln ('Introduza a nota 4');
readln (nota4);
media1:= (nota1+nota2+nota3+nota4)/4;
If (media1>=10) then
writeln ('O aluno foi aprovado e a media e', media1 )
else 
writeln ('Introduzir a nota do exame ');
readln (notaexame) ;
media2:= (media1+notaexame)/2 ;
if (media2>=10) then
writeln ('O aluno foi aprovado e a media e', media2 ) 
else 
writeln ('O aluno nao foi aprovado porque teve media', media2 ) ;
End.