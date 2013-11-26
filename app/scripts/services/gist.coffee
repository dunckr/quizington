angular.module('quizingtonApp')
  .factory 'gist', (Request,$http,$q) ->

    class Gist extends Request

      constructor: (@$http, @$q) ->
        console.log 'gist constructor'

      _constructUrl: (id) ->
        "https://api.github.com/gists/#{id}?callback=JSON_CALLBACK"

    new Gist $http, $q

# class Gist #extends Request

#   constructor: (@$http, @$q) ->

#   get: (id) ->
#     @_request @_constructUrl id

#   _request: (url) ->
#     deferred = @$q.defer()
#     @$http.jsonp(url).success (data) -> deferred.resolve data
#     deferred.promise

#   _constructUrl: (id) ->
#     "https://api.github.com/gists/#{id}?callback=JSON_CALLBACK"

# angular.module('quizingtonApp')
#   .factory 'gist', ($http,$q) -> new Gist($http,$q)
