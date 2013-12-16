class DocCtrl

  constructor: (@$scope,@$routeParams,@spreadsheet) ->
    @$scope.id = @$routeParams.id

    @spreadsheet.get(@$scope.id).then (data) =>
      @$scope.items = data

angular.module('quizingtonApp')
  .controller 'docCtrl', ['$scope','$routeParams','spreadsheet',DocCtrl]


# class LoginCtrl

#   constructor: (@$scope,@user,@currentUser) ->
#     @attachScope()

#   attachScope: ->
#     @$scope.signupForm = =>
#       user = new @user @$scope.user
#       @currentUser.login user

# angular.module('folioupApp')
#   .controller 'loginCtrl', ['$scope','user','currentUser',LoginCtrl]
