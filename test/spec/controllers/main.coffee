describe 'Controller: MainCtrl', () ->
  controller = scope = $rootScope = request = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($controller, _$rootScope_) ->
    $rootScope = _$rootScope_
    scope = $rootScope.$new()
    spreadsheet = gist = null
    controller = $controller 'MainCtrl',
      $scope: scope
      spreadsheet: spreadsheet
      gist: gist

  it 'should initialize', ->
    expect(controller).toBeDefined()
