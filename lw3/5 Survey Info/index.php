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
    if (file_exists($file)) 
    {
        $show_info = file($file);
        echo "First Name: " . $show_info[0];
        echo "Last Name: " . $show_info[1];
        echo "Email: " . $show_info[2];
        echo "Age: " . $show_info[3]; 
    }
    else 
    {
        echo "Email not found";
    }
}