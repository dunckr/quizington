angular.module('quizingtonApp')
  .factory 'File', ->

    class File

      constructor: (@data) ->

      toJSON: ->
        for name,file of @data.data.files
          return angular.toJSON file.content
