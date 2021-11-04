 Program A5_if ;
Const
hsemana = 36;
dh = 4.50;
psemana = 7.50;
Var
dinheiro, horas: real;
Begin
writeln('Insira o número de horas que trabalhou na semana: ');
read(horas);
dinheiro:= horas * dh;
if(horas > hsemana)then
writeln('Como trabalhou mais de 36 horas esta semana vai receber ', dinheiro + psemana,'$ no final do mês.')
else 
writeln('Como trabalhou menos de 36 horas este semana vai receber ', dinheiro,'$ no final do mês.');  
End.