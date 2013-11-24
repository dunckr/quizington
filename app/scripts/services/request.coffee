class Request

  constructor: (@$http, @$q) ->

  get: (id) ->

angular.module('quizingtonApp')
  .factory 'request', ($http,$q) -> new Request($http,$q)
