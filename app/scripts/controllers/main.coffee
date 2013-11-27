class MainCtrl

  constructor: (@$scope,@spreadsheet,@gist) ->

    id = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    @$scope.data = @spreadsheet.get id

    id = '2439102'
    @$scope.data2 = @gist.get id


angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','spreadsheet','gist',MainCtrl]
