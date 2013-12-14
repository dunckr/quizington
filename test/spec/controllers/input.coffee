describe 'Controller: InputCtrl', ->
  controller = $scope = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_) ->
    $rootScope = _$rootScope_
    $scope = $rootScope.$new()
    quiz =
      request: jasmine.createSpy()
    controller = $controller 'InputCtrl',
      $scope: $scope

  it 'should initialize', ->
    expect(controller).toBeDefined()

  it 'should take in a URL from the user and ', ->
    $scope.url = 'asfdasdf'
    $scope.submit()
    expect(quiz.request).toHaveBeenCalled()
