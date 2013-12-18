class InputCtrl

  constructor: (@$scope,@$location) ->
    @$scope.url = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    @attachScope()

  attachScope: ->
    @$scope.request = =>
      @$location.path @constructPath @$scope.url

  constructPath: (url) ->
    return @_isDoc url if /key=/.test url
    return @_isGist url if /gist/.test url
    "doc/#{url}"

  _isDoc: (url) ->
    "doc/#{@_parseDocId(url)}"

  _parseDocId: (url) ->
    url.match('key=(.*)&')[1]

  _isGist: (url) ->
    "gist/#{@_parseGistId(url)}"

  _parseGistId: (url) ->
    url.split('/')[4]

angular.module('quizingtonApp')
  .controller 'inputCtrl', ['$scope','$location',InputCtrl]
