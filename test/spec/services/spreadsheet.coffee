describe 'Service: Spreadsheet', ->
  beforeEach module 'quizingtonApp'
  s  = null
  beforeEach inject (_spreadsheet_) ->
    s = _spreadsheet_

  it 'should construct url', ->
    expect(s._constructUrl('asdf')).toEqual 'SUCCESS'

  it 'should construct url', ->
    expect(s.get('asdf')).toEqual 'SUCCESS'
