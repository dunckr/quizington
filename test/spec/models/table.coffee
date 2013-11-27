describe 'Service: Table', () ->
  beforeEach module 'quizingtonApp'
  table = null
  response =
    table:
      rows:
        [
          c:
            [
              v: 'Countries'
            ,
              v: 'Capitals'
            ]
        ,
          c:
            [
              v: 'A'
            ,
              v: 'B'
            ]
        ]

  beforeEach inject (_Table_) ->
    Table = _Table_
    table = new Table response

  it 'should have data', ->
    expect(table.data).toEqual response

  it 'should convert to json', ->
    expect(table.toJSON()).toEqual
      Countries: 'Capitals'
      A: 'B'
