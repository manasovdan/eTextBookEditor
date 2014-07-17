Feature: Добавление блока с виджетом сравнения перевода слова с аналогом

  Scenario: Создаем новый учебник и модуль
    Given Открываем страницу "http://localhost/books.php"
    And   Создаем новый учебник
    Then  Создаем новый модуль

  Scenario: Создаем новый блок, активируем виджет сравнения перевода и добавляем слова
    And   Создаем блок с заголовком "Block title"
    And   Выбираем виджет со значением "translate-comparative"
    Then  Добавляем слово "Привет" с переводом "Hello"
    And   Проверяем результат виджета сравнения перевода со словом "Привет" и переводом "Hello"