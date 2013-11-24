class Gist #extends Request

  constructor: (@$http, @$q) ->

  get: (id) ->
    # deferred = $q.defer()


    request = @$http.jsonp("https://api.github.com/gists/2439102?callback=JSON_CALLBACK")
    request.then (response) ->
      console.log 'here'
      console.log response

    # failure ->deferred.reject("Gist not found")
    # success -> deferred.resolve(json)
    # deferred = $q.defer()

angular.module('quizingtonApp')
  .factory 'gist', ($http,$q) -> new Gist($http,$q)
