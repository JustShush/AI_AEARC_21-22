// ------------------------------------------------------------------------- //
//                                                                           //
// Unit: Complexo                                                            //
// Vers�o: 1.0v                                                              //
// Autor: Raphael Augusto                                                    //
// Descri��o: Esta unidade que permite fazer opera��es simples com n�meros   //
// complexos                                                                 //
// Licen�a: General Public License(GPL)                                      //
//                                                                           //
// ------------------------------------------------------------------------- //

Unit Complexo;
Interface
  Type

  { Tipo que armazena um n�mero complexo, sendo que:
    parteReal = A parte real(a) do n�mero complexo(a + bi);
    parteImag = A parte imagin�ria(b) do n�mero complexo(a + bi).
  }
  NumComplexo = record
    parteReal : real;
    parteImag : real;
  end;

  function novo(parteReal, parteImag : real) : NumComplexo;
  procedure mostrar(z : NumComplexo);

  function conjugado(z : NumComplexo) : real;
  function modulo(z : NumComplexo) : real;
  function oposto(z : NumComplexo) : NumComplexo;
  function igual(z1, z2 : NumComplexo) : boolean;

  function somar(z1, z2 : NumComplexo) : numComplexo;
  function subtrair(z1, z2 : NumComplexo) : numComplexo;
  function multiplicar(z1, z2 : NumComplexo) : numComplexo;
  function dividir(z1, z2 : NumComplexo) : numComplexo;

Implementation

  function novo(parteReal, parteImag : real) : NumComplexo;
  {Esta fun��o simplifica o processo de inicializa��o
   dos valores de um n�mero complexo.
  }
  var
    z : NumComplexo;

  begin

    z.parteReal := parteReal;
    z.parteImag := parteImag;

    novo := z;

  end;

  procedure mostrar(z : NumComplexo);
  {Escreve o n�mero complexo na tela do console, no formato:
    a + bi
  }
  var
    sinal : char;

  begin

    if z.parteImag > 0 then
      sinal := '+' else sinal := '-';

    if (z.parteReal <> 0) and (z.parteImag <> 0) then
      write(z.parteReal:0:2, ' ', sinal,' ', abs(z.parteImag):0:2, 'i')
    else if (z.parteReal = 0) and (z.parteImag <> 0) then
      write(z.parteImag:0:2, 'i')
    else if (z.parteReal <> 0) and (z.parteImag = 0) then
      write(z.parteReal:0:2)
    else
      write('0');

  end;

  function conjugado(z : NumComplexo) : real;
  {Retorna o conjugado do n�mero complexo, sendo a simplifica��o:
    (a + bi)(a - bi) = a� - abi + abi - b�i�
    (a + bi)(a - bi) = a� + b�
  }
  begin

    conjugado := sqr(z.parteReal) + sqr(z.parteImag);

  end;

  function modulo(z : NumComplexo) : real;
  {Retona o modulo do n�mero complexo:
    |z| = sqrt(sqr(a) + sqr(b))
  }
  begin

    modulo := sqrt(sqr(z.parteReal) + sqr(z.parteImag));

  end;

  function oposto(z : NumComplexo) : NumComplexo;
  {Inverte o n�mero complexo:
    (a + bi) -> (- a - bi)
  }
  begin

    z.parteReal := -z.parteReal;
    z.parteImag := -z.parteImag;

    oposto := z;

  end;

  function igual(z1, z2 : NumComplexo) : boolean;
  {Verifica se dois n�meros complexos s�o iguais}
  begin

  if (z1.parteReal = z2.parteReal) and (z1.parteImag = z2.parteImag) then
    igual := true
  else
    igual := false;

  end;

  function somar(z1, z2 : NumComplexo) : numComplexo;
  {Soma dois n�meros complexos}
  var
    z : NumComplexo;

  begin

    z.parteReal := z1.parteReal + z2.parteReal;
    z.parteImag := z1.parteImag + z2.parteImag;

    somar := z;

  end;

  function subtrair(z1, z2 : NumComplexo) : numComplexo;
  {subtrai dois n�meros complexos}
  var
    z : NumComplexo;

  begin

    z.parteReal := z1.parteReal - z2.parteReal;
    z.parteImag := z1.parteImag - z2.parteImag;

    subtrair := z;

  end;

  function multiplicar(z1, z2 : NumComplexo) : numComplexo;
  {Multiplica dois n�meros complexos, sendo que a forma simplificada �:
    (a + bi)(c + di) = ac + adi + bci + bdi�
    (a + bi)(c + di) = (ac - bd) + i(ad + bc)
  }
  var
    z : NumComplexo;

  begin

    z.parteReal := z1.parteReal * z2.parteReal - z1.parteImag * z2.parteImag;
    z.parteImag := z1.parteReal * z2.parteImag + z1.parteImag * z2.parteReal;

    multiplicar := z;

  end;

  function dividir(z1, z2 : NumComplexo) : numComplexo;
  {Divide dois n�meros complexos, sendo que a forma simplificada �
    (a + bi)/(c + di) = ((a + bi)*(c - di))/((c + di)*(c - di))
    (a + bi)/(c + di) = (ac - adi + bci - bdi�)/(c� + d�)
    (a + bi)/(c + di) = (ac  + bd)/(c� + d�) + i(bc - ad)/(c� + d�)
  }
  var
    z : NumComplexo;
    c : real;        // Conjugado de z2

  begin

    c := sqr(z2.parteReal) + sqr(z2.parteImag);
    z.parteReal := (z1.parteReal * z2.parteReal  + z1.parteImag * z2.parteImag)/c;
    z.parteImag := (z1.parteImag * z2.parteReal  - z1.parteReal * z2.parteImag)/c;

    dividir := z;

  end;
End.