Program A7_pas ;
const
social = 0.07;
irs = 0.16;

Var
vbruto,calculo1,calculo2,liquido: real;

Begin
writeln('Insira o valor do vencimento bruto');
readln(vbruto);
calculo1:= (social * vbruto);
writeln('O valor retirado para a segurança social é de: ', calculo1);
calculo2:= (irs * vbruto);
writeln('O valor retirado para o IRS é de: ', calculo2);
liquido:= (vbruto-calculo1-calculo2);
writeln('O vencimento liquido é de: ', liquido);  
End.