'use strict'

describe 'Controller: GistCtrl', () ->

  # load the controller's module
  beforeEach module 'quizingtonApp'

  GistCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    GistCtrl = $controller 'GistCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
