#noinspection CucumberUndefinedStep
Feature: Проверка работы содержания

  Scenario: Создаем модуль и проверяем результат
    Given Открываем страницу авторизации
    And   Авторизовываемся как администратор
    And   Кликаем по ссылке с классом "book-list-link"
    And   Создаем новый учебник
    When  Кликаем по ссылке добавить модуль
    And   Заполняем форму модуля "Модуль 1"
    And   Сохраняем модуль
    And   Проверяем успешное сохранение модуля
    Then  Закрываем форму модуля
    And   Кликаем по ссылке только что созданного модуля в списке

  Scenario: Редактируем модуль
    Given Начинаем редактировать текущий модуль
    And   Указываем для модуля заголовок "1-тема Саякат", ключевые вопросы "Унаанын ичинен кайсынысы жакшы?" и описание "Жатыш жөндөмөнүн мүчөсү. Жактама ат атооч."
    When  Заканчиваем редактирование текущего модуля
    And   Ждем "3" секунд
    And   Перезагружаем страницу
    And   Проверяем поля модуля заголовок "1-тема Саякат", ключевые вопросы "Унаанын ичинен кайсынысы жакшы?" и описание "Жатыш жөндөмөнүн мүчөсү. Жактама ат атооч."

  Scenario: Проверяем содержание
    Given Кликаем по ссылке с классом "book-list-link"
    And   Открываем созданный учебник
    Then  Кликаем по кнопке содержания
    Given Проверяем заголовок "1-тема Саякат", ключевые вопросы "Унаанын ичинен кайсынысы жакшы?" и описание "Жатыш жөндөмөнүн мүчөсү. Жактама ат атооч."


