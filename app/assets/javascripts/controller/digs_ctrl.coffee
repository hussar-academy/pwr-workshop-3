angular.module('DigApp').controller 'DigsCtrl', ($scope, Dig) ->
  $scope.digs = []
  Dig.index().then (responese) ->
    $scope.digs = responese.data
