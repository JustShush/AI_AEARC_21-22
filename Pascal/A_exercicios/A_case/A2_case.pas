Program A2_case ;
Var
num1, num2, num3: real;
Begin
writeln('Insira o primeiro número: ');
readln(num1); // 2
writeln('Insira o segundo número: ');
readln(num2);  // 3
writeln('Insira o teceiro número: ');
readln(num3);  // 4
if(num1 > num2)then
	if(num1 > num3)then
		if(num2 > num3)then
			writeln(num3,', ', num2,', ', num1)
			else
			writeln(num2, ', ', num3,', ', num1)
		else
			writeln(num2,', ', num1,', ', num3)
else
	if(num1 < num3)then
		if(num3 > num2)then
			writeln(num1,', ', num2,', ',num3)
			else
			writeln(num1,', ', num3,', ', num2)
		else
		writeln(num3,', ',num1,', ',num2);
End.