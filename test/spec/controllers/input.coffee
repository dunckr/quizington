describe 'Controller: InputCtrl', ->
  controller = quiz = $scope = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_) ->
    $rootScope = _$rootScope_
    $scope = $rootScope.$new()
    quiz =
      submit: jasmine.createSpy()
    controller = $controller 'InputCtrl',
      $scope: $scope
      quiz: quiz

  it 'should initialize', ->
    expect(controller).toBeDefined()

  it 'should take in a URL from the user and ', ->
    $scope.url = 'asfdasdf'
    $scope.submit()
    expect(quiz.submit).toHaveBeenCalled()
