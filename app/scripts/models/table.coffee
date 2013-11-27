angular.module('quizingtonApp')
  .factory 'Table', ->

    class Table

      constructor: (@data) ->

      toJSON: ->
        output = {}
        for row in @data.table.rows
          output[row.c[0].v] = row.c[1].v
        output
