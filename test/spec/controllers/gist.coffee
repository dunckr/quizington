describe 'Controller: GistCtrl', () ->
  gistCtrl = scope = $q = gist = null
  response = micCheck: '212'

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_,_$q_) ->
    $q = _$q_
    $rootScope = _$rootScope_
    scope = $rootScope.$new()
    $routeParams =
      id: '123'
    deferred = $q.defer()
    deferred.resolve response
    gist =
      get: jasmine.createSpy().andReturn deferred.promise
    gistCtrl = $controller 'GistCtrl',
      $scope: scope
      $routeParams: $routeParams
      gist: gist

  it 'should initialize', ->
    expect(gistCtrl).toBeDefined()

  it 'should set the id', ->
    expect(scope.id).toEqual '123'

  it 'should request the gist', ->
    expect(gist.get).toHaveBeenCalled()

  it 'should set the items', ->
    scope.$digest()
    expect(scope.items).toEqual response
