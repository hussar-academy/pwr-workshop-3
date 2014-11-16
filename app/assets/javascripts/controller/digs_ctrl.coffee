angular.module('DigApp').controller 'DigsCtrl', ($scope, Dig) ->
  $scope.digs = []
  Dig.index().then (responese) ->
    $scope.digs = responese.data

  $scope.edit = (dig) ->
    dig._edit = true

  $scope.save = (dig) ->
    if dig._edit
      Dig.update(dig)
    if dig._new
      Dig.create(dig).then (responese) ->
        dig.id = responese.data.id
    dig._edit = false
    dig._new = false

  $scope.new = ->
    $scope.digs.push { title: '', _new: true }

  $scope.delete = (dig) ->
    i = 0
    angular.forEach $scope.digs, (val) ->
      if dig.id == val.id
        $scope.digs.splice(i, 1)
        Dig.delete(dig)
      i += 1
