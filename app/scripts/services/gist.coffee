angular.module('quizingtonApp')
  .factory 'gist', (Fetch,File,$http,$q) ->

    class Gist extends Fetch

      constructor: (@$http, @$q) ->

      _constructUrl: (id) ->
        "https://api.github.com/gists/#{id}?callback=JSON_CALLBACK"

      _process: (data) ->
        file = new File data
        file.toJSON()

    new Gist $http, $q
