<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8"/>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
  <link rel="stylesheet" href="css/style.css"/>
  <title>Моя страница</title>
</head>
<body>
    <div class="header">
      <h2 class="header__title">Введите e-mail</h2>
    </div>
    <form class="form" method="POST">
      <div class="form__title form__title_required">Введите email пользователя:</div>
      <input class="form__input" name="email" required type="text" />
      <input class="submit submit__button" type="submit"/>
      <?php if (isset($args["answer"])): ?>
        <div class="form__title">Регистрационные данные:</div>
        <div class="form__answers"><?php echo $args["answer"]; ?></div>
      <?php endif; ?>
      <?php if (isset($args["error"])): ?>
        <div class="form__answers"><?php echo $args["error"]; ?></div>
      <?php endif; ?>
    </form>
  </div>
</body>
</html>