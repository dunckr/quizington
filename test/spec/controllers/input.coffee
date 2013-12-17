describe 'Controller: InputCtrl', ->
  inputCtrl = scope = $location = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_,_$location_) ->
    $rootScope = _$rootScope_
    scope = $rootScope.$new()
    $location = _$location_
    inputCtrl = $controller 'InputCtrl',
      $scope: scope
      $location: $location

  it 'should initialize', ->
    expect(inputCtrl).toBeDefined()

  it 'should set the default url', ->
    expect(scope.url).toEqual '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'

  it 'should change the path on request', ->
    scope.url = 'interesting'
    scope.request()
    expect($location.path()).toEqual '/doc/interesting'
