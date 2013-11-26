describe 'Service: Gist', ->
  beforeEach module 'quizingtonApp'
  gist = null
  beforeEach inject (_gist_) ->
    gist = _gist_

  it 'should construct url', ->
    expect(gist._constructUrl('test')).toEqual 'https://api.github.com/gists/test?callback=JSON_CALLBACK'
