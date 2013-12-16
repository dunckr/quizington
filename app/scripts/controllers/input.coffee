class InputCtrl

  constructor: (@$scope,@$location) ->
    @$scope.url = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    @attachScope()

  attachScope: ->
    @$scope.request = =>
      @$location.path "/doc/#{@$scope.url}"

  # validation...

angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','$location',InputCtrl]
