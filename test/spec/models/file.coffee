describe 'Service: File', () ->
  beforeEach module 'quizingtonApp'
  file = null
  response =
    data:
      files:
        'file1':
          content: 'JSON'

  beforeEach inject (_file_) ->
    File = _file_
    file = new File response

  it 'should do something', () ->
    expect(!!file).toBe true
