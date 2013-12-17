describe 'Directive: question', ->
  element = scope = null

  beforeEach module 'quizingtonApp'
  beforeEach inject ($rootScope, _$compile_) ->
    $compile = _$compile_
    scope = $rootScope.$new()
    scope.question = 'There are no stupid questions'
    scope.answer = 'Only stupid people'
    html = '<question question="question" answer="answer"/>'
    element = angular.element html
    element = $compile(element) scope
    $rootScope.$digest()

  it 'should display the question', ->
    expect(element.find('div').html()).toEqual scope.question

  it 'should render the answer', ->
    expect(element.find('div').eq(1).html()).toEqual scope.answer

  it 'should not display the answer', ->
    expect(element.find('div').eq(1).hasClass('ng-hide')).toBe true

  it 'should diplay the answer on click', ->
    element.triggerHandler 'click'
    scope.$digest()
    expect(element.find('div').eq(1).hasClass('ng-hide')).toBe false
