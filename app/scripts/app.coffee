'use strict'

angular.module('quizingtonApp', [
  'ngRoute'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'mainCtrl'
      .otherwise
        redirectTo: '/'
  ]
