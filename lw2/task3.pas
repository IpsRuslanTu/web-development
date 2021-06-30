PROGRAM HelloDearUser(INPUT, OUTPUT);
USES DOS;
VAR
  W1, W2, W3, W4, W5, Looking: CHAR;
  TempFileForQuery: TEXT;
BEGIN
  REWRITE(TempFileForQuery);
  WRITELN(TempFileForQuery, GetEnv('QUERY_STRING'));
  WRITELN;
  RESET(TempFileForQuery);
  {инициализация W1,W2,W3,W4,Looking}
  W1 := ' ';
  W2 := ' ';
  W3 := ' ';
  W4 := ' ';
  W5 := ' ';
  Looking := 'Y';

  WHILE Looking = 'Y'
  DO
    BEGIN
      { Двигать окно, проверять конец данных}
      W1 := W2;
      W2 := W3;
      W3 := W4;
      W4 := W5;
      READ(TempFileForQuery, W5);
      
      IF W1 = 'n'
      THEN
        IF W2 = 'a'
        THEN
          IF W3 = 'm'
          THEN
            IF W4 = 'e'
            THEN
              IF W5 = '='
              THEN {'name' найдено}
                Looking := 'L';
                
      IF EOLN(TempFileForQuery)
      THEN
        Looking := 'N'
    END;
    
    WRITE('Hi dear, ');
    IF Looking = 'L'
    THEN
      BEGIN
        WHILE (W5 <> '&') AND (NOT EOLN(TempFileForQuery))
        DO
          BEGIN
            READ(TempFileForQuery, W5);
            IF W5 <> '&'
            THEN
              WRITE(W5)
          END;
          WRITELN('!')
        END;
    IF Looking = 'N'
    THEN
      WRITE('Anonymous!')
END.
