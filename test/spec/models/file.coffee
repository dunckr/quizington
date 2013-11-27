describe 'Service: File', () ->
  beforeEach module 'quizingtonApp'
  file = null
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

  it 'should flatten the response', ->
    expect(file.toJSON()).toEqual 'JSON'
