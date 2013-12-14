'use strict'

angular.module('quizingtonApp')
  .factory 'quiz', [() ->
    # Service logic
    # ...

    meaningOfLife = 42

    # Public API here
    {
      someMethod: () ->
        meaningOfLife
    }
  ]
