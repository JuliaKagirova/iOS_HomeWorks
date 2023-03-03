# Домашняя работа UIVC

Задание по UIViewController

1. Создайте новый проект с названием Navigation, используя шаблон Single View App.
2. Удалите из проекта Main.storyboard, который создался по умолчанию. Не забудьте изменить конфигурацию в Info.plist.
3. В AppDelegate.swift добавьте UITabBarController. Добавьте в него два UINavigationController. Первый будет показывать ленту пользователя, а второй — профиль.
4. Измените Tab Bar Item у добавленных контроллеров, добавьте заголовок и картинку. Картинки можно добавить в Assets.xcassets или использовать SF Symbols.
5. Создайте FeedViewController и ProfileViewController и добавьте их как root view controller у навигационных контроллеров.
6. Добавьте PostViewController для показа выбранного поста. Поменяйте заголовок у контроллера и цвет главной view. Добавьте кнопку на FeedViewController и сделайте переход на экран поста. Контроллер должен показаться в стеке UINavigationController.
7. Создайте структуру Post со свойством title: String. Создайте объект типа Post в FeedViewController и передайте его в PostViewController. В классе PostViewController выставьте title полученного поста в качестве заголовка контроллера.
8. На PostViewController добавьте Bar Button Item в навигейшн бар. При нажатии на него должен открываться новый контроллер InfoViewController. Контроллер должен показаться модально.
9. На InfoViewController создайте кнопку. При нажатии на неё должен показаться UIAlertController с заданным title, message и двумя UIAlertAction. При нажатии на UIAlertAction в консоль должно выводиться сообщение
10. 