describe 'Service: File', () ->
  beforeEach module 'quizingtonApp'
  file = angular = null
  response =
    data:
      files:
        'file1':
          content: 'JSON'

  beforeEach inject (_File_) ->
    File = _File_
    file = new File response

  it 'should have data', ->
    expect(file.data).toBe response
