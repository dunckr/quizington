angular.module('quizingtonApp')
  .factory 'Request', ($http,$q) ->

    class Request

      constructor: (@$http, @$q) ->
        console.log 'request'

      get: (id) ->
        @_request @_constructUrl id

      _request: (url) ->
        deferred = @$q.defer()
        @$http.jsonp(url).success (data) -> deferred.resolve data
        deferred.promise

      _constructUrl: (id) ->
        ''
