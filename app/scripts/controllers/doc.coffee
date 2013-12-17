class DocCtrl

  constructor: (@$scope,@$routeParams,@spreadsheet) ->
    @$scope.id = @$routeParams.id

    # if no id then redirect

    @spreadsheet.get(@$scope.id).then (data) =>
      @$scope.items = data

angular.module('quizingtonApp')
  .controller 'docCtrl', ['$scope','$routeParams','spreadsheet',DocCtrl]
