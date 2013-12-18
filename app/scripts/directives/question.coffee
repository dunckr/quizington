angular.module('quizingtonApp')
  .directive 'question', ->
    restrict: 'E'
    scope:
      question: '='
      answer: '='
    template: '
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title" ng-bind="question"></h3>
        </div>
        <div class="panel-body" ng-bind="answer" ng-show="clicked">
        </div>
      </div>
    '
    link: ($scope, element, attrs) ->
        element.bind 'click', (event) =>
          $scope.clicked = true
          $scope.$apply()
