<?php

header("Content-Type: text/plain");
function getGETParameter(string $name): ?string
{
    return isset($_GET[$name]) ? (string) $_GET[$name] : null;
}

$email = getGETParameter('email');
if ($email === null)
{
    echo "email required";
}
else
{
    $file = 'data/' . $email . '.txt';
    $first_name = getGETParameter('first_name');
    $last_name = getGETParameter('last_name');
    $age = getGETParameter('age');
    
    $userInfo = $first_name . ';' . PHP_EOL . $last_name . ';' . PHP_EOL . $email . ';' . PHP_EOL . $age . ';'; 
    file_put_contents($file, $userInfo);
}