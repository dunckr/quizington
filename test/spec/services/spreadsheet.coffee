describe 'Service: Spreadsheet', ->
  spreadsheet = null

  beforeEach module 'quizingtonApp'
  beforeEach inject (_spreadsheet_,_$http_,_$q_) ->
    $q = _$q_
    deferred = $q.defer()
    $http = _$http_
    spreadsheet = _spreadsheet_

  it 'should construct url', ->
    expect(spreadsheet._constructUrl('test')).toEqual 'https://spreadsheets.google.com/tq?key=test&gid=0&tqx=responseHandler%3AJSON_CALLBACK'
