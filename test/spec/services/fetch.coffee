describe 'Service: Fetch', ->
  beforeEach module 'quizingtonApp'
  fetch = $http = null

  beforeEach inject (_Fetch_,_$http_,_$q_) ->
    $q = _$q_
    $http = _$http_
    Fetch = _Fetch_
    fetch = new Fetch $http, $q

  it 'should construct the url', ->
    expect(fetch._constructUrl('')).toEqual ''

  it 'should get data', ->
    data = '123'
    spyOn(fetch, '_fetch').andReturn data
    expect(fetch.get('')).toEqual data
