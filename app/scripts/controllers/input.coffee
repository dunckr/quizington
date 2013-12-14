class InputCtrl

  constructor: (@$scope,quiz) ->
    quiz.submit()
    @attachScope()

  attachScope: ->
    @$scope.submit = ->
      console.log 'here'
      # console.log @quiz


angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','quiz',InputCtrl]
