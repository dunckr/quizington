describe 'Service: Quiz', ->
  beforeEach module 'quizingtonApp'
  quiz = null

  beforeEach inject (_quiz_) ->
    quiz = _quiz_

  it 'should construct the url', ->
    expect(quiz).toBeDefined()

  it 'should be able to submit', ->
    expect(quiz.submit()).toBe true
