PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
VAR
  ReceivedQueryString: STRING;  
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  LengthParametr, LengthQueryString, FindParametr, FindEndOfDirtyParametr: INTEGER;
  DirtyParametr: STRING;
BEGIN
  ReceivedQueryString := GetEnv('QUERY_STRING');
  FindParametr := POS(Key + '=', ReceivedQueryString);
  IF FindParametr > 0
  THEN
    BEGIN
      LengthQueryString := length(ReceivedQueryString);
      DirtyParametr := COPY(ReceivedQueryString, FindParametr + length(Key) + 1, LengthQueryString - (FindParametr + length(Key)));
      FindEndOfDirtyParametr := POS('&', DirtyParametr);
      IF FindEndOfDirtyParametr > 0
      THEN 
        GetQueryStringParameter := COPY(DirtyParametr, 1, FindEndOfDirtyParametr - 1)
      ELSE
        GetQueryStringParameter := COPY(DirtyParametr, 1, length(DirtyParametr))
    END
  ELSE
    GetQueryStringParameter := '' 
END;  
 
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))

END. {WorkWithQueryString}
