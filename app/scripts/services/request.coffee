class Request

  constructor: (@$http, @$q) ->

  get: (id) ->
    @_request @_constructUrl id

  _request: (url) ->
    deferred = @$q.defer()
    @$http.jsonp(url).success (data) -> deferred.resolve data
    deferred.promise

  _constructUrl: (id) ->
    ''

angular.module('quizingtonApp')
  .factory 'request', ($http,$q) -> new Request($http,$q)
