class GistCtrl

  constructor: (@$scope,@$routeParams,@gist) ->
    @$scope.id = @$routeParams.id

    @gist.get(@$scope.id).then (data) =>
      @$scope.items = data

angular.module('quizingtonApp')
  .controller 'gistCtrl', ['$scope','$routeParams','gist',GistCtrl]
