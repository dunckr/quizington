angular.module('quizingtonApp')
  .directive 'spreadsheet', ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      url = 'https://api.github.com/gists/2439102'
      # url = "http://spreadsheets.google.com/feeds/list/0Ak0qDiMLT3XddHlNempadUs1djdkQ0tFLWF6ci1rUUE/od6/public/values?alt=json-in-script"
      element.append("<script src='" +url+ "'/>")

