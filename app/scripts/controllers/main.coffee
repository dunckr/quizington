class MainCtrl

  constructor: (@$scope,@spreadsheet,@gist) ->

    id = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    @spreadsheet.get(id).then (data) =>
      @$scope.data = data

    id = '2439102'
    @gist.get(id).then (data) =>
      @$scope.data2 = data


angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','spreadsheet','gist',MainCtrl]
