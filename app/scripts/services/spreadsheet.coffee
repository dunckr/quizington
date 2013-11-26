class Spreadsheet #extends Request

  constructor: (@$http, @$q) ->

  get: (id) ->
    @_request @_constructUrl id

  _request: (url) ->
    deferred = @$q.defer()
    @$http.jsonp(url).success (data) -> deferred.resolve data
    deferred.promise

  _constructUrl: (id) ->
    "https://spreadsheets.google.com/tq?key=#{id}&gid=0&tqx=responseHandler%3AJSON_CALLBACK"

angular.module('quizingtonApp')
  .factory 'spreadsheet', ($http,$q) -> new Spreadsheet($http,$q)
