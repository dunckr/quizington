class MainCtrl

  constructor: (@$scope,@spreadsheet,@gist) ->
    # id = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    # @spreadsheet.get(id).then (data) =>
    #   @$scope.data = data

    # id = '7683567'
    # @gist.get(id).then (data) =>
    #   @$scope.data2 = data
    #   console.log data



angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','spreadsheet','gist',MainCtrl]
