#noinspection CucumberUndefinedStep
Feature: Добавление нового блока

  Scenario: Создаем новый блок, проверяем результат и удаляем его
    Given Открываем страницу "http://staff:swordfish@localhost/login"
    And   Кликаем по ссылке с классом "book-list-link"
    And   Создаем новый учебник
    Then  Создаем новый модуль
    And   Создаем блок с заголовком "Block title"
    Then  Проверяем блок с заголовком "Block title"
    And   Удаляем блок
    And   Проверяем удаленный блок
