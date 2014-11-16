angular.module('DigApp').controller 'DigsCtrl', ($scope, $http) ->
  $scope.digs = []
  $http.get('/api/digs.json').then (responese) ->
    $scope.digs = responese.data
