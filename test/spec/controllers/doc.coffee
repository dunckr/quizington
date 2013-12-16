ddescribe 'Controller: DocCtrl', () ->
  docCtrl = scope = $q = spreadsheet = null
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
    spreadsheet =
      get: jasmine.createSpy().andReturn deferred.promise
    docCtrl = $controller 'DocCtrl',
      $scope: scope
      $routeParams: $routeParams
      spreadsheet: spreadsheet

  it 'should initialize', ->
    expect(docCtrl).toBeDefined()

  it 'should set the id', ->
    expect(scope.id).toEqual '123'

  it 'should request the spreadsheet', ->
    expect(spreadsheet.get).toHaveBeenCalled()

  it 'should set the items', ->
    scope.$digest()
    expect(scope.items).toEqual response
