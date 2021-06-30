<?php
    function saveFeedbackPage()
    {
        $data = [
            "name" => getPostParameter("name"),
            "email" => strtolower(trim(getPostParameter("email"))),
            "country" => getPostParameter("country"),
            "gender" => getPostParameter("gender"),
            "message" => getPostParameter("message")
        ];
        $form["data"] = $data;

        if ($data["name"] === null)
            $errors["name_error"] = "Введите имя";
        elseif (!(preg_match("/[а-яА-Я]/", $data["name"])))
            $errors["name_error"] = "Имя может содержать только русские буквы";
            
        if ($data["email"] === null) 
            $errors["email_error"] = "Введите email!";
        elseif (!(filter_var($data["email"], FILTER_VALIDATE_EMAIL)))
            $errors["email_error"] = "E-mail указан неверно";

        if (empty($data["message"]))
            $errors["message_error"] = "Введите ваше сообщение!";

        if (empty($errors)) 
        {
            $file = fopen("../data/" . $data['email'] . ".txt", "w");
            foreach( $data as $key => $value ) 
                fwrite($file, $key . ': ' . $value . PHP_EOL);
            fclose($file);
            $form = [];
            $form["sent"] = "Сообщение отправлено!";
        } else {
            $form["errors"] = $errors;
        }
        
        renderTemplate("main.tpl.php", $form);
    }