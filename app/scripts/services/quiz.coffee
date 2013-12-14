class Quiz

  constructor: () ->
    console.log 'constructed'

  submit: ->
    console.log 'submitting'
    true

angular.module('quizingtonApp')
  .factory 'quiz', () -> new Quiz()


# angular.module('quizingtonApp')
#   .factory 'Quiz', () ->

#     class Quiz

#       constructor: () ->
#         console.log 'constructed'

#       submit: ->
#         console.log 'inside the submit'
#         true

#     new Quiz()
