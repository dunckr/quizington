angular.module('quizingtonApp')
  .directive 'question', ->
    restrict: 'E'
    scope:
      question: '='
      answer: '='
    template: '
      <div ng-bind="question" class="question"></div>
      <div ng-bind="answer" ng-show="clicked" class="answer"></div>
    '
    link: ($scope, element, attrs) ->
        element.bind 'click', (event) =>
          $scope.clicked = true
          $scope.$apply()
