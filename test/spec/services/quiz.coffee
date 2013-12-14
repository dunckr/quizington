describe 'Service: Quiz', ->
  beforeEach module 'quizingtonApp'
  quiz = null

  beforeEach inject (_quiz_) ->
    quiz = _quiz_

  it 'should construct the url', ->
    expect(quiz).toBeDefined()

  it 'should not be able to submit an invalid url', ->
    expect(quiz.request('123')).toBe false

  it 'should be able to submit valid url', ->
    expect(quiz.request('123')).toBe true

