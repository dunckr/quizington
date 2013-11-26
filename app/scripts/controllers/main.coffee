class MainCtrl

  constructor: (@$scope,@spreadsheet,@gist) ->

    id = '0AlRp2ieP7izLdGFNOERTZW0xLVpROFc3X3FJQ2tSb2c'
    @$scope.data = @spreadsheet.get id

    id = '2439102'
    @$scope.data2 = @gist.get id


angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','spreadsheet','gist',MainCtrl]
