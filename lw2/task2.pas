PROGRAM SarahRevere(INPUT, OUTPUT);
{Печать соответствующего сообщения, зависящего от величины
 на входе:  '...by land'  для 1;  '...by sea'  для 2; '...by air' для 3;
 иначе печать сообщения об ошибке}
USES 
  DOS;
VAR
  LineOfQueryString, ParametrOfLanterns: STRING;
  FindLanterns: BYTE;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  LineOfQueryString := GetEnv('QUERY_STRING');
  FindLanterns := POS('lanterns=', LineOfQueryString);
  ParametrOfLanterns := COPY(LineOfQueryString, FindLanterns + 9, 1);
  IF ParametrOfLanterns = '1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF ParametrOfLanterns = '2'
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      IF ParametrOfLanterns = '3'
      THEN
        WRITELN('The British are coming by air.')
      ELSE
        WRITELN('The North Church shows only ''', ParametrOfLanterns, '''.')
END. {PaulRevere}

