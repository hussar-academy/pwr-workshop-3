angular.module('DigApp').factory 'Dig', ($http) ->
  base = '/api/digs'
  index: -> $http.get("#{base}.json")
