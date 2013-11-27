angular.module('quizingtonApp')
  .factory 'Request', ($http,$q) ->

    class Request

      constructor: (@$http, @$q) ->

      get: (id) ->
        @_request @_constructUrl id

      _request: (url) ->
        deferred = @$q.defer()
        @$http.jsonp(url).success (data) =>
          deferred.resolve @_process data
        deferred.promise

      _process: (data) ->
        data

      _constructUrl: (id) ->
        ''
