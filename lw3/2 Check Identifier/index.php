<?php

header("Content-Type: text/plain");

function getGETParameter(string $name): ?string
{
    return isset($_GET[$name]) ? (string)$_GET[$name] : null;
}

$identifier = getGETParameter('identifier');

if ($identifier === null)
{
    echo "Parameter not found";
}
else
{
    if (preg_match("/^[a-zA-Z][a-zA-Z0-9]*$/", $identifier))
    {
        echo "YES, $identifier is in rule SR3";
    }
    else 
    {                                                                                
        echo "NO, $identifier isn't in rule SR3, identifier must start with a letter";
    }
}