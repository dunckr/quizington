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

  it 'should change the path on doc request', ->
    scope.url = 'interesting'
    scope.request()
    expect($location.path()).toEqual '/doc/interesting'

  it 'should change the path on gist request', ->
    scope.url = 'https://gist.github.com/dunckr/7683567/raw/269f91c37504eb127288c642ba7aa96ee6242950/Patterns'
    scope.request()
    expect($location.path()).toEqual '/gist/7683567'

  it 'should change the path on doc request', ->
    scope.url = 'https://docs.google.com/spreadsheet/pub?key=0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc&output=html'
    scope.request()
    expect($location.path()).toEqual '/doc/0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
