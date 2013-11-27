angular.module('quizingtonApp')
  .factory 'spreadsheet', (Request,Table,$http,$q) ->

    class Spreadsheet extends Request

      constructor: (@$http, @$q) ->

      _constructUrl: (id) ->
        "https://spreadsheets.google.com/tq?key=#{id}&gid=0&tqx=responseHandler%3AJSON_CALLBACK"

      _process: (data) ->
        table = new Table data
        s = table.toJSON()
        console.log s
        s

    new Spreadsheet($http,$q)
