class Quiz

  constructor: ->

  request: (url) ->
    if @_valid url
      return url
    false

  _valid: (url) ->
    return

angular.module('quizingtonApp')
  .factory 'quiz', () -> new Quiz()
