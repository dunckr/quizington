class InputCtrl

  constructor: (@$scope,@quiz) ->
    @attachScope()

  attachScope: ->
    @$scope.submit = =>
      @quiz.submit @$scope.url
      # if success, then change path to main
      # if fails then err

angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','quiz',InputCtrl]
