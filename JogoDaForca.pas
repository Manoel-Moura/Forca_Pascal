program JogoDaForca;

var
  PalavraSecreta, PalavraAdivinhada: string;
  LetraDigitada: char;
  TentativasRestantes, i: integer;
  EncontrouLetra: boolean;

begin
  write('Digite a palavra secreta: ');
  readln(PalavraSecreta);
  
  TentativasRestantes := Length(PalavraSecreta);
  PalavraSecreta := Upcase(PalavraSecreta);

  PalavraAdivinhada := '';

  for i := 1 to Length(PalavraSecreta) do
    PalavraAdivinhada := PalavraAdivinhada + '*';

  writeln('Palavra secreta: ', PalavraAdivinhada);

  while TentativasRestantes > 0 do
  begin
    write('Digite uma letra: ');
    readln(LetraDigitada);
    LetraDigitada := Upcase(LetraDigitada);
    EncontrouLetra := false;

    for i := 1 to Length(PalavraSecreta) do
    begin
      if PalavraSecreta[i] = LetraDigitada then
      begin
        PalavraAdivinhada[i] := LetraDigitada;
        EncontrouLetra := true;
      end;
    end;

    if EncontrouLetra then
      writeln('A letra "', LetraDigitada, '" pertence � palavra secreta.')
    else
    begin
      writeln('A letra "', LetraDigitada, '" N�O pertence � palavra secreta.');
      TentativasRestantes := TentativasRestantes - 1;
    end;

    writeln('Palavra atual: ', PalavraAdivinhada);
    writeln('Tentativas restantes: ', TentativasRestantes);
    writeln('----------------------------------');
    writeln(' ');
    

    if PalavraAdivinhada = PalavraSecreta then
    begin
      writeln('Parab�ns! Voc� adivinhou a palavra secreta: ', PalavraSecreta);
      break;
    end;
  end;

  if PalavraAdivinhada <> PalavraSecreta then
    writeln('Voc� perdeu. A palavra secreta era: ', PalavraSecreta);
end.


