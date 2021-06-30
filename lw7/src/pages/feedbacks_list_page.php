<?php
    function feedbackListPage(): void 
    {
        $email = getPostParameter("email");
        $message = [];
        if (file_exists("../data/" . $email . ".txt") && !empty($email)) 
        {
            $message["answer"] = file_get_contents("../data/" . $email . ".txt");
        } 
        else 
        {
            $message["error"] = "Нет данных";
        }
        
        renderTemplate("feedbacks.tpl.php", $message);
    }