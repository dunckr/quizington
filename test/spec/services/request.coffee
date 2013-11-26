describe 'Service: Request', ->
  beforeEach module 'quizingtonApp'
  request = $http = null

  beforeEach inject (_Request_,_$http_,_$q_) ->
    $q = _$q_
    deferred = $q.defer()
    $http = _$http_
    Request = _Request_
    request = new Request $http, $q

  it 'should construct the url', ->
    expect(request._constructUrl('')).toEqual ''

  it 'should get data', ->
