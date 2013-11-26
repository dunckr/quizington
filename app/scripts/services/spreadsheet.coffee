class Spreadsheet

  constructor: (@$http, @$q) ->

  get: (id) ->

    # WORKING:
    # url = 'https://spreadsheets.google.com/tq?key=0AlRp2ieP7izLdGFNOERTZW0xLVpROFc3X3FJQ2tSb2c&gid=0&tqx=responseHandler%3Asuccess'

    deferred = @$q.defer()
    id = '0AlRp2ieP7izLdGFNOERTZW0xLVpROFc3X3FJQ2tSb2c'
    url = "https://spreadsheets.google.com/tq?key=#{id}&gid=0&tqx=responseHandler%3AJSON_CALLBACK"
    @$http.jsonp(url)
      .success (data) ->
        console.log 'success kid'
        console.log data
        deferred.resolve data
    deferred.promise

angular.module('quizingtonApp')
  .factory 'spreadsheet', ($http,$q) -> new Spreadsheet($http,$q)
