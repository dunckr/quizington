angular.module('quizingtonApp', [
  'ngRoute'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/input.html'
        controller: 'inputCtrl'
      .when '/:id',
        templateUrl: 'views/main.html'
        controller: 'mainCtrl'
      .otherwise
        redirectTo: '/'
  ]
