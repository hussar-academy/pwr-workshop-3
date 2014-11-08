angular.module('DigApp').controller 'DigsCtrl', ($scope, $http, Rails) ->
  $scope.digs = []
  $scope.newDig = {}
  $scope.editedDigID = null

  $http.get("//#{Rails.host}/api/digs").success (response) ->
    $scope.digs = response

  $scope.create = ->
    $http.post("//#{Rails.host}/api/digs", { dig: $scope.newDig }).success (response) ->
      $scope.digs.push response
      $scope.newDig = {}

  $scope.edit = (dig) ->
    $scope.editedDigID = dig.id

  $scope.cancelEdit = ->
    $scope.editedDigID = null

  $scope.update = (dig) ->
    $http.put("//#{Rails.host}/api/digs/#{dig.id}", { dig: dig }).success (response) ->
      # Replace current object with one returned by back-end
      index = $scope.digs.indexOf(dig)
      $scope.digs.splice(index, 1, dig)
      $scope.editedDigID = null

  $scope.destroy = (dig) ->
    $http.delete("//#{Rails.host}/api/digs/#{dig.id}").success (response) ->
      index = $scope.digs.indexOf(dig)
      $scope.digs.splice(index, 1)

