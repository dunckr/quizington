'use strict'

describe 'Service: Request', () ->

  # load the service's module
  beforeEach module 'quizingtonApp'

  # instantiate service
  Request = {}
  beforeEach inject (_Request_) ->
    Request = _Request_

  it 'should do something', () ->
    expect(!!Request).toBe true
