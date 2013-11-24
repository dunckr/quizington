'use strict'

describe 'Service: Spreadsheet', () ->

  # load the service's module
  beforeEach module 'quizingtonApp'

  # instantiate service
  Spreadsheet = {}
  beforeEach inject (_Spreadsheet_) ->
    Spreadsheet = _Spreadsheet_

  it 'should do something', () ->
    expect(!!Spreadsheet).toBe true
