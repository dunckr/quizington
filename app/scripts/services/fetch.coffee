angular.module('quizingtonApp')
  .factory 'Fetch', ($http,$q) ->

    class Fetch

      constructor: (@$http, @$q) ->

      get: (id) ->
        @_fetch @_constructUrl id

      _fetch: (url) ->
        deferred = @$q.defer()
        @$http.jsonp(url).success (data) =>
          deferred.resolve @_process data
        deferred.promise

      _process: (data) ->
        data

      _constructUrl: (id) ->
        ''
