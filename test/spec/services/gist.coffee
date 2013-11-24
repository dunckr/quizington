'use strict'

describe 'Service: Gist', () ->

  # load the service's module
  beforeEach module 'quizingtonApp'

  # instantiate service
  Gist = {}
  beforeEach inject (_Gist_) ->
    Gist = _Gist_

  it 'should do something', () ->
    expect(!!Gist).toBe true
