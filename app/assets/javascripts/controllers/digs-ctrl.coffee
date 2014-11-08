angular.module('DigApp').controller 'DigsCtrl', ($scope, $http, Rails) ->
  $scope.digs = []

  $http.get("//#{Rails.host}/api/digs").success (response) ->
    $scope.digs = response

