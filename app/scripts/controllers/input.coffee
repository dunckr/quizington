class InputCtrl

  constructor: (@$scope,@$location,@quiz) ->
    @$scope.url = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    @attachScope()

  attachScope: ->
    @$scope.request = =>
      console.log 'button pressedd'
      @quiz.request @$scope.url

      @$location.path '/1'

      # if success, then change path to main
      # if fails then err

angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','$location','quiz',InputCtrl]
