angular.module('quizingtonApp')
  .directive 'spreadsheet', ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->

      element.sheetrock
        url: 'https://docs.google.com/spreadsheet/ccc?key=0AlRp2ieP7izLdGFNOERTZW0xLVpROFc3X3FJQ2tSb2c#gid=0'
