# Slim
```slim
div ng-controller="KittensCtrl"
  span
    | {{ kittensCount }}
```

Wykorzystanie controllera `KittensCtrl`. Wszystko, co znajdzie się w tym `div`ie będzie miało do niego dostęp.

Wąsy `{{ … }}` służą do wywołania Angulara w kodzie HTML. W tym przypadku wyświetlą zawartość zmiennej `$scope.kittensCount` z controllera.

```slim
div ng-repeat="cat in kittens"
  | {{ cat.name }}
```

`ng-repeat` jest pętlą iterujacą po tablicy `kittens`.

```slim
div ng-show="showKitten(cat.id)"
  …
div ng-hide="!showKitten(cat.id)"
  …
```

Pokazywanie / ukrywanie elementu na podstawie wyrażenia logicznego.

```slim
button type="button" ng-click="vote()"
```

Wywołanie akcji `$scope.vote` zdefiniowanej w controllerze.

```slim
form ng-submit="create()"
  …
  input type="submit" value="Submit"
```
Wysłanie formularza (submit) wywoła akcję `$scope.create` zdefiniowaną w controllerze.

# AngularJS
```coffee
# app/assets/javascripts/controllers/kittens-ctrl.coffee
angular.module('MyApp').controller 'KittensCtrl', ($scope, $http) ->
  $scope.kittensCount = 2
```

Utworzenie controllera w Angularze. Nazwa modułu `MyApp` musi zgadzać się z nazwą podaną w dyrektywie `ng-app` w `app/views/layouts/application.html.slim`

```coffee
# app/assets/javascripts/controllers/kittens-ctrl.coffee
$scope.newKitten = {}
$scope.create = ->
  $http.post("/api/kittens", { kittens: $scope.newKitten }).success (response) ->
    …
```
Utworzenie akcji w controllerze Angularowym. Przypisanie zmiennej lub funkcji do obiektu `$scope` sprawi, że widok będzie miał do tego dostęp.

Funkcja przekazana w parametrze do `success` będzie wywołana po tym, jak serwer zwróci odpowiedź pozytywną.

# Ruby on Rails
```ruby
# app/controllers/api/kittens_controller.rb
class Api::KittensController < ApplicationController
  def index
    …
  end
end
```

Definicja controllera `KittensController` w module `Api` z akcją `index`.

```ruby
# config/routes.rb
namespace :api do
  get '/kittens', to: 'kittens#index'
end
```

Wywołanie akcji `index` po wejściu (wysłaniu requesta GET) na ścieżkę `/api/kittens`.

```ruby
namespace :api do
  post 'kittens/:id/vote', to: 'kittens#vote'
end
```

Wywołanie akcji `vote` po wysłaniu requesta POST razem z przekazaniem `id` kotka – przykładowa ścieżka: `/api/kittens/1/vote`

```ruby
# config/routes.rb
namespace :api do
  resources :kittens
end
```

Automatycznie zdefiniowanie ścieżek do akcji `index`, `show`, `create`, `update,` `destroy` w controllerze.

```ruby
# app/controllers/api/kittens_controller.rb
def index
  render json: Dig.all
end
```

Zwrócenie json-a przez akcję w controllerze.

```ruby
# app/controllers/api/kittens_controller.rb
def do_something_with_kitten
  kitten = Kitten.find(params[:id])
  …
end
```

Akcje w controllerach mają dostęp do globalnej zmiennej `params`, która jest Hashem.

```ruby
# app/models/dig.rb
def as_json(opts={})
  super.merge(rating: votes.sum(:amount))
end
```

Dodanie atrybutu `rating` do obiektów `Diga` wysyłanych JSON-em.

# Debugowanie
## Coffeescript
```coffee
console.log variable
```

Wyświetlenie zawartości zmiennej w konsoli przeglądarki.

```coffee
debugger
```

Zostawienie tego w kodzie JavaScriptowym (lub CoffeeScriptowym) spoowoduje zatrzymanie wykonywania w tym miejscu i da dostęp do aktualnego kontekstu.

## Rails
```
Rails.logger.info variable.inspect
```

Wyświetlenie zawartości zmiennej w logu serwera Railsowego (który również jest zapisywany w folderze `log/development.log`)

```
binding.pry
```

Debugger dla Railsów. Zatrzyma wykonywanie serwera i da dostęp do aktualnego kontekstu z poziomu terminala, gdzie uruchomiliśmy nasz serwer.

# Linki

- [$scope](https://docs.angularjs.org/guide/scope)
- [$http](https://docs.angularjs.org/api/ng/service/$http)
- [Promises](https://thinkster.io/egghead/promises/)
- [Ruby Modules](http://www.tutorialspoint.com/ruby/ruby_modules.htm)
- [Ruby Array](http://www.ruby-doc.org/core-2.1.5/Array.html)
- [Ruby Hash](http://www.ruby-doc.org/core-2.1.4/Hash.html)
- [Zebrane materiały do nauki (nasz Hackpad)](https://monterail.hackpad.com/KNTAW-Zebrane-materiay-do-nauki-URBz0gV1GWI)

