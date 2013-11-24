'use strict'

describe 'Directive: spreadsheet', () ->

  # load the directive's module
  beforeEach module 'quizingtonApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<spreadsheet></spreadsheet>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the spreadsheet directive'
