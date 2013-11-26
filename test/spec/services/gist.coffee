describe 'Service: Gist', (Gist) ->
  beforeEach module 'quizingtonApp'
  gist = $http = null

  # beforeEach inject (_$httpBackend_,_$q_) ->
  # beforeEach inject (_Gist_,_Request_,_$httpBackend_,_$q_) ->
  #   $q = _$q_
  #   $http = _$httpBackend_
  #   Request = _Request_
  #   Gist = _Gist_
    # gist = new Gist $http, $q

  it 'should be defined', ->
    expect(gist).toBeDefined()
