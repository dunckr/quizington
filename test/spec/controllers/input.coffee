describe 'Controller: InputCtrl', () ->
  controller = scope = $rootScope = request = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_) ->
    $rootScope = _$rootScope_
    scope = $rootScope.$new()
    spreadsheet = gist = null
    controller = $controller 'InputCtrl',
      $scope: scope

  it 'should initialize', ->
    expect(controller).toBeDefined()
