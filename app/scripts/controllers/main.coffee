class MainCtrl

  constructor: (@$scope,@quiz) ->
    # id = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    # @spreadsheet.get(id).then (data) =>
    #   @$scope.data = data

    # id = '7683567'
    # @gist.get(id).then (data) =>
    #   @$scope.data2 = data
    #   console.log data
    console.log 'we are in the main controller'
    # @scope.url = @quiz.get()
    console.log @quiz
    console.log @quiz.get()

    @$scope.url = @quiz.get()




angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','quiz',MainCtrl]
