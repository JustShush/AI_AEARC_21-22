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
writeln('O valor retirado para a seguran�a social � de: ', calculo1);
calculo2:= (irs * vbruto);
writeln('O valor retirado para o IRS � de: ', calculo2);
liquido:= (vbruto-calculo1-calculo2);
writeln('O vencimento liquido � de: ', liquido);  
End.