angular.module('quizingtonApp')
  .factory 'spreadsheet', (Request,$http,$q) ->

    class Spreadsheet extends Request

      constructor: (@$http, @$q) ->

      _constructUrl: (id) ->
        "https://spreadsheets.google.com/tq?key=#{id}&gid=0&tqx=responseHandler%3AJSON_CALLBACK"

    new Spreadsheet($http,$q)
