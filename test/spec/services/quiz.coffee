'use strict'

describe 'Service: Quiz', () ->

  # load the service's module
  beforeEach module 'quizingtonApp'

  # instantiate service
  Quiz = {}
  beforeEach inject (_Quiz_) ->
    Quiz = _Quiz_

  it 'should do something', () ->
    expect(!!Quiz).toBe true
