angular.module('quizingtonApp', [
  'ngRoute'
])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/input.html'
        controller: 'inputCtrl'
      .when '/doc/:id',
        templateUrl: 'views/main.html'
        controller: 'docCtrl'
      .when '/gist/:id',
        templateUrl: 'views/main.html'
        controller: 'gistCtrl'
  ]
