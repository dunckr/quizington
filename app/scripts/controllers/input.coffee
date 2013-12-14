class InputCtrl

  constructor: (@$scope,@quiz) ->
    @attachScope()

  attachScope: ->
    @$scope.submit = ->
      console.log 'here'
      @quiz.request @$scope.id


angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','quiz',InputCtrl]
