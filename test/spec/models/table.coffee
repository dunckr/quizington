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
          c:
            [
              v: 'A'
            ,
              v: 'B'
            ]
        ]

  beforeEach inject (_table_) ->
    Table = _table_
    tabel = new Table()

  it 'should do something', () ->
    expect(!!table).toBe true
