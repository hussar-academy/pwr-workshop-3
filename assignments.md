## Zadanie 1.
Chcemy wyświetlić listę wszystkich Digów na stronie głównej.

Kroki:

1. Utworzyć controller w API Railsowym `Api::DigsController` z akcją `index` oraz odpowiednio zmodyfikować `routes.rb`.
2. Utworzyć controller w Angularze wykorzystujący serwisy: `$scope` oraz `$http`
  - Hint: W controllerze utwórz zmienną `$scope.digs`, która początkowo będzie pustą tablicą.
  - Hint: Wykorzystaj serwis `$http` aby wysłać request `GET` i wypełnij tę tablicę.
3. Odpowiednio wypełnić `app/assets/templates/index.html.slim` wykorzystując dyrektywę `ng-repeat`.

## Zadanie 2.
Chcemy zobaczyć ile punktów ma dany Dig i być w stanie na niego zagłosować.

Kroki:

1. Dodanie akcji w controllerze Angularowym do wysłania odpowiedniej liczby punktów (+1 lub -1)
  - Hint: Należy wykorzystać serwis `$http` aby wysłać request `POST`.
2. Dodanie przycisków głosowania obok Diga.
  - Przyciski powinny reagować na `ng-click` i wywoływać wcześniej utworzoną funkcję.
3. Dodanie nowej akcji w controllerze Railsowym (na przykład `vote`) oraz odpowiednia zmiana `routes.rb`.
  - Jako, że aktualnie nie mamy informacji o aktualnie zalogowanym użytkowniku, przypisz głos do losowego użytkownika.
4. Zmodyfikowanie modelu Diga, żeby do swojego obiektu dołączał informację o tym ile posiada punktów.
  - Hint: To powinno być zrobione przy wykorzystaniu reprezenterów, o których powiemy w przyszłości. Aktualnie możecie wykorzystać ten kawałek kodu: https://github.com/hussar-academy/pwr-workshop-3/blob/master/cheatsheet.md#ruby-on-rails (`def as_json`)
5. Wyświetlenie punktów przy Digu.

## Zadanie 3.
Chcemy być w stanie tworzyć, usuwać i edytować Digi.

Założenia:

- Pod listą wszystkich Digów powinien być formularz do tworzenia nowego Diga.
- Do każdego wyświetlanego Diga dodaj dwa przyciski: `Edit` i `Destroy`.
- Wciśnięcie przycisku `Edit` podmieni treść Diga na formularz edycji, wciśnięcie `Destroy` usunie Diga z listy i z bazy danych.

Proponowane kroki:

1. Dodać i wypełnić akcje `create`, `update` i `destroy` do controllera Railsowego. W `routes.rb` zamienić akcję `get` na `resources :digs`
  - Przetestuj, czy ścieżki zostały utworzone poprawnie na przykład wykorzystując [Postmana](http://www.getpostman.com/).
  - Metody w controllerach mogą korzystać z globalnej zmiennej `params` aby odczytywać dane wysyłane w formularzach.
2. Dodanie tworzenia nowego Diga do controllera Angularowego.
  - Hint: Należy użyć dodatkowej zmiennej, np. `$scope.newDig`, która będzie wykorzystywana w formularzu tworzenia.
3. Dodanie formularza tworzenia nowego Diga
  - Hint: Formularz musi wykorzystać dyrektywę `ng-submit` oraz mieć przycisk `input type="submit"`
4. Dodanie edytowania do controllera Angularowego.
  - Hint: Możesz utworzyć zmienną przechowującą ID aktualnie edytowanego Diga (domyślnie ustawioną na `null`).
  - Hint: Wszystkie funkcje używane do edycji muszą mieć przekazywany w parametrze Dig.
5. Dodanie formularza edycji Diga
  - Hint: Formularz należy dodać w ramach pętli `ng-repeat` dla każdego Diga
  - Hint: Używając zmiennej z ID aktualnie edytowanego Diga możesz wykorzystać dyrektywy `ng-show`/`ng-hide`, aby odpowiednio pokazywać/ukrywać Diga/jego formularz.
6. Dodanie przycisku `Destroy` i wywołanie odpowiedniej akcji w controllerze Angularowym.

Uwagi:

- Formularze tworzenia/edycji Diga muszą posiadać pole przypisujące ID ownera. Dla uproszczenia użyjmy zwykłego pola `input type="number"`. W normalnych warunkach, oczywiście, byłby to ID aktualnie zalogowanego użytkownika.
