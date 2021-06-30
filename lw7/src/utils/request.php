<?php
    function getPostParameter(string $key): ?string
    {
        return isset($_POST[$key]) ? (string) $_POST[$key] : null;
    }
    function getRequestMethod(): string
    {
        return $_SERVER['REQUEST_METHOD'];
    }