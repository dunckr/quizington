describe 'Service: Request', ->
  beforeEach module 'quizingtonApp'
  request = $http = null

  beforeEach inject (_Request_,_$httpBackend_,_$q_) ->
    $q = _$q_
    $http = _$httpBackend_
    Request = _Request_
    request = new Request $http, $q

  it 'should be defined', ->
    expect(request).toBeDefined()
