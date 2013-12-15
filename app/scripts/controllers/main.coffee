class MainCtrl

  constructor: (@$scope,@$routeParams,@spreadsheet) ->
    # id = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    # @spreadsheet.get(id).then (data) =>
    #   @$scope.data = data

    # id = '7683567'
    # @gist.get(id).then (data) =>
    #   @$scope.data2 = data
    #   console.log data
    @$scope.id = @$routeParams.id


    @spreadsheet.get(@$scope.id).then (data) =>
      @$scope.items = data



angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','$routeParams','spreadsheet',MainCtrl]
