// ------------------------------------------------------------------------- //
//                                                                           //
// Unit: Complexo                                                            //
// Versão: 1.0v                                                              //
// Autor: Raphael Augusto                                                    //
// Descrição: Esta unidade que permite fazer operações simples com números   //
// complexos                                                                 //
// Licença: General Public License(GPL)                                      //
//                                                                           //
// ------------------------------------------------------------------------- //

Unit Complexo;
Interface
  Type

  { Tipo que armazena um número complexo, sendo que:
    parteReal = A parte real(a) do número complexo(a + bi);
    parteImag = A parte imaginária(b) do número complexo(a + bi).
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
  {Esta função simplifica o processo de inicialização
   dos valores de um número complexo.
  }
  var
    z : NumComplexo;

  begin

    z.parteReal := parteReal;
    z.parteImag := parteImag;

    novo := z;

  end;

  procedure mostrar(z : NumComplexo);
  {Escreve o número complexo na tela do console, no formato:
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
  {Retorna o conjugado do número complexo, sendo a simplificação:
    (a + bi)(a - bi) = a² - abi + abi - b²i²
    (a + bi)(a - bi) = a² + b²
  }
  begin

    conjugado := sqr(z.parteReal) + sqr(z.parteImag);

  end;

  function modulo(z : NumComplexo) : real;
  {Retona o modulo do número complexo:
    |z| = sqrt(sqr(a) + sqr(b))
  }
  begin

    modulo := sqrt(sqr(z.parteReal) + sqr(z.parteImag));

  end;

  function oposto(z : NumComplexo) : NumComplexo;
  {Inverte o número complexo:
    (a + bi) -> (- a - bi)
  }
  begin

    z.parteReal := -z.parteReal;
    z.parteImag := -z.parteImag;

    oposto := z;

  end;

  function igual(z1, z2 : NumComplexo) : boolean;
  {Verifica se dois números complexos são iguais}
  begin

  if (z1.parteReal = z2.parteReal) and (z1.parteImag = z2.parteImag) then
    igual := true
  else
    igual := false;

  end;

  function somar(z1, z2 : NumComplexo) : numComplexo;
  {Soma dois números complexos}
  var
    z : NumComplexo;

  begin

    z.parteReal := z1.parteReal + z2.parteReal;
    z.parteImag := z1.parteImag + z2.parteImag;

    somar := z;

  end;

  function subtrair(z1, z2 : NumComplexo) : numComplexo;
  {subtrai dois números complexos}
  var
    z : NumComplexo;

  begin

    z.parteReal := z1.parteReal - z2.parteReal;
    z.parteImag := z1.parteImag - z2.parteImag;

    subtrair := z;

  end;

  function multiplicar(z1, z2 : NumComplexo) : numComplexo;
  {Multiplica dois números complexos, sendo que a forma simplificada é:
    (a + bi)(c + di) = ac + adi + bci + bdi²
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
  {Divide dois números complexos, sendo que a forma simplificada é
    (a + bi)/(c + di) = ((a + bi)*(c - di))/((c + di)*(c - di))
    (a + bi)/(c + di) = (ac - adi + bci - bdi²)/(c² + d²)
    (a + bi)/(c + di) = (ac  + bd)/(c² + d²) + i(bc - ad)/(c² + d²)
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