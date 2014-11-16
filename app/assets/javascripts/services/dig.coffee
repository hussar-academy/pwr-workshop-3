angular.module('DigApp').factory 'Dig', ($http) ->
  base = '/api/digs'
  index: -> $http.get("#{base}.json")
  update: (dig) -> $http.put("#{base}/#{dig.id}.json", dig: dig)
  create: (dig) -> $http.post("#{base}.json", dig: dig)
  delete: (dig) -> $http.delete("#{base}/#{dig.id}.json")
