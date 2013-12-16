angular.module('quizingtonApp')
.factory 'spreadsheet', (Fetch,Table,$http,$q) ->

    class Spreadsheet extends Fetch

      constructor: (@$http, @$q) ->

      _constructUrl: (id) ->
        "https://spreadsheets.google.com/tq?key=#{id}&gid=0&tqx=responseHandler%3AJSON_CALLBACK"

      _process: (data) ->
        table = new Table data
        table.toJSON()

    new Spreadsheet($http,$q)
