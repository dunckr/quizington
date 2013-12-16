ddescribe 'Controller: DocCtrl', () ->
  controller = $scope = $rootScope = $routeParams = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_,_$routeParams_,_$q_,_spreadsheet_) ->
    $routeParams = _$routeParams_
    $q = _$q_
    $rootScope = _$rootScope_
    $scope = $rootScope.$new()

    spreadsheet = _spreadsheet_

    deferred = $q.defer()
    deferred.resolve('somevalue')

    # spyOn(spreadsheet, 'get').andReturn(deferred.promise)
    spreadsheet.get = jasmine.createSpy().andReturn(deferred.promise)
    controller = $controller 'DocCtrl',
      $scope: $scope
      $routeParams: $routeParams
      spreadsheet: spreadsheet

  it 'should initialize', ->
    expect(controller).toBeDefined()

  it 'should take id from routeParams', ->
    $routeParams.id = 'adf'
    expect($scope.id).toEqual 'ad'

  it 'should', ->
    # expect($scope.items).toEqual 'ad'

