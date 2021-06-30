<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8"/>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
  <link rel="stylesheet" href="css/style.css"/>
  <title>PHP обработка форм</title>
</head>
<body>
  <div class="header">
    <h2 class="header__title">НАПИШИ МНЕ</h2>
  </div>
  <form class="form" method="POST">
    <?php if (isset($args["sent"])): ?>
      <p class="form__feedback"><?php echo $args["sent"]; ?></p>
    <?php endif; ?>

    <div class="form__title form__title_name">Ваше имя</div>
    <?php if (isset($args["errors"]["name_error"])): ?>
      <label class="form__errors"><?php echo $args["errors"]["name_error"]; ?></label>
    <?php endif; ?>
    <input class="form__input" name="name" type="text" value="<?php echo $args["data"]["name"] ?? ""; ?>" />
    <div class="form__title form__title_email">Ваш email</div>
    <?php if (isset($args["errors"]["email_error"])): ?>
      <label class="form__errors"><?php echo $args["errors"]["email_error"]; ?></label>
    <?php endif; ?>
    <input class="form__input" name="email" type="text" value="<?php echo $args["data"]["email"] ?? ""; ?>" />
    <div class="form__title form__title_country">Откуда вы?</div>
    <div class="form__select">
      <select class="form__input country" name="country">
        <option value="Russia">Россия</option>
        <option value="USA">США</option>
        <option value="China">Китай</option>
        <option value="Germany">Германия</option>
      </select>
    </div>
    <div class="form__title form__title_gender">Ваш пол</div>
    <input class="radio" type="radio" name="gender" value="male" id="genderMale" checked/>
    <label class="gender" for="genderMale">Мужской</label>
    <input class="radio" type="radio" name="gender" value="female" id="genderFemale"/>
    <label class="gender" for="genderFemale">Женский</label>
    <div class="form__title form__title_message">Ваше сообщение</div>
    <?php if (isset($args["errors"]["message_error"])): ?> 
      <label class="form__errors"><?php echo $args["errors"]["message_error"]; ?></label>
    <?php endif; ?>
    <textarea class="form__input form__text" name="message"></textarea>
    <input class="submit submit__button" type="submit"/>
  </form>
</body>
</html>