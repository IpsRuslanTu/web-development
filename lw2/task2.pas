PROGRAM SarahRevere(INPUT, OUTPUT);
{������ ���������������� ���������, ���������� �� ��������
 �� �����:  '...by land'  ��� 1;  '...by sea'  ��� 2; '...by air' ��� 3;
 ����� ������ ��������� �� ������}
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

