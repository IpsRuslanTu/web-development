<?php

header("Content-Type: text/plain");

function getGETParameter(string $name): ?string
{
    return isset($_GET[$name]) ? (string)$_GET[$name] : null;
}

$password = getGETParameter('password');
if ($password === null)
{
    echo "Error";
}
else
{
    $len = strlen($password);

    // Изначально считаем надежность равной 0
    $passwordComplexity = 0;
    
    // (4*n), где n - количество всех символов пароля
    $passwordComplexity = $passwordComplexity + 4 * $len;
    
    // +(n*4), где n - количество цифр в пароле
    $passwordComplexity = $passwordComplexity + preg_match_all("/[0-9]/", $password) * 4;
    
    // +((len-n)*2) в случае, если пароль содержит n символов в верхнем регистре
    $countUpCase = preg_match_all("/[A-Z]/", $password);
    if ($countUpCase > 0)
    {
        $passwordComplexity = $passwordComplexity + ($len - $countUpCase) * 2; 
    }
    
    // +((len-n)*2) в случае, если пароль содержит n символов в нижнем регистре
    $countLowCase = preg_match_all("/[a-z]/", $password);
    if ($countLowCase > 0)
    {
        $passwordComplexity = $passwordComplexity + ($len - $countLowCase) * 2;
    }
    
    // Если пароль состоит только из букв вычитаем число равное количеству символов.
    if (preg_match("/^[a-zA-Z]+$/", $password)) 
    {
        $passwordComplexity = $passwordComplexity - $len;
    }    
    
    // Если пароль состоит только из цифр вычитаем число равное количеству символов.
    if (preg_match("/^\d+$/", $password))
    {
        $passwordComplexity = $passwordComplexity - $len;
    }
    
    // За каждый повторяющийся символ в пароле вычитается количество повторяющихся символов
    $arrayUniqueSimbols = array_count_values(str_split($password)); // массив повторяющихся символов
    $arrayValuesSimbols = array_values($arrayUniqueSimbols);
    for ($i=0; $i < count($arrayValuesSimbols); $i++)
    {
        if ($arrayValuesSimbols[$i] > 1)
        {
            $passwordComplexity = $passwordComplexity - $arrayValuesSimbols[$i];
        }
    }
    
    echo $passwordComplexity;
}