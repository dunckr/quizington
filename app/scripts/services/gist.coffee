angular.module('quizingtonApp')
  .factory 'gist', (Request,$http,$q) ->

    class Gist extends Request

      constructor: (@$http, @$q) ->

      _constructUrl: (id) ->
        "https://api.github.com/gists/#{id}?callback=JSON_CALLBACK"

    new Gist $http, $q
