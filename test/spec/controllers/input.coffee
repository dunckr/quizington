describe 'Controller: InputCtrl', ->
  controller = $scope = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_) ->
    $rootScope = _$rootScope_
    $scope = $rootScope.$new()
    controller = $controller 'InputCtrl',
      $scope: $scope

  it 'should initialize', ->
    expect(controller).toBeDefined()
