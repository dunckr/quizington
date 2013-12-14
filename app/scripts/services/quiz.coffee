class Quiz

  constructor: ->
    @url = 'constructed'

  request: (url) ->
    console.log 'we are setting the url in quiz'
    @url = url
    # if @_valid url
    #   return url
    # false

  get: ->
    @url

  _valid: (url) ->
    return

angular.module('quizingtonApp')
  .factory 'quiz', () -> new Quiz()
