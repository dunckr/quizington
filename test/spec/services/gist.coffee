describe 'Service: Gist', ->
  gist = File = null

  beforeEach module 'quizingtonApp'
  beforeEach inject (_gist_,_File_) ->
    File = _File_
    gist = _gist_

  it 'should construct url', ->
    expect(gist._constructUrl('test')).toEqual 'https://api.github.com/gists/test?callback=JSON_CALLBACK'
