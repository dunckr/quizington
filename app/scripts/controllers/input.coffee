class InputCtrl

  constructor: (@$scope,@$location) ->
    @$scope.url = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    @attachScope()

  attachScope: ->
    @$scope.request = =>
      @$location.path @constructPath @$scope.url

  constructPath: (url) ->
    return @isDoc url if /key=/.test url
    return @isGist url if /gist/.test url
    "doc/#{url}"

  isDoc: (url) ->
    "doc/#{@parseDocId(url)}"

  parseDocId: (url) ->
    url.match('key=(.*)&')[1]

  isGist: (url) ->
    "gist/#{@parseGistId(url)}"

  parseGistId: (url) ->
    url.split('/')[4]

angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','$location',InputCtrl]
