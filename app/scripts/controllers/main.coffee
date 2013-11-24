class MainCtrl

  constructor: (@$scope,@spreadsheet,@$http) ->

    window.sheetrock_callback_0 = (data) ->
      console.log 'adfasdf'
      console.log data

    @spreadsheet.get()



    # id = '0Ahq_0At5tKNrdE1nUHJESkdsalVQM19sTE1WUTNHQXc'

    # @spreadsheet.get id, (response) ->
    #   console.log 'success'
    #   console.log response

    # https://spreadsheets.google.com/feeds/list/0AtMEoZDi5-pedElCS1lrVnp0Yk1vbFdPaUlOc3F3a2c/od6/public/values?alt=json-in-script&callback=x
    # url = 'https://spreadsheets.google.com/feeds/cells/0Ar0dGuti6jq3dDYydTJSVGw0WWE1YV9qMnF0ZlE5LUE/od6/public/values?alt=json-in-script&callback=JSON_CALLBACK';
    # url = 'https://spreadsheets.google.com/feeds/list/0Ahq_0At5tKNrdE1nUHJESkdsalVQM19sTE1WUTNHQXc/od6/private/full?alt=json-in-script&callback=JSON_CALLBACK'


    # players = $resource feedUrl,
    # {alt: 'json', callback: 'JSON_CALLBACK'}
    # {query:     {method: 'JSONP'}


    # @$scope.data = @spreadsheet.get()

    # console.log @$scope.data

  # parseTableData: (data) ->
  #   console.log 'success'
  #   console.log data



      # var url = 'https://spreadsheets.google.com/feeds/cells/0Ar0dGuti6jq3dDYydTJSVGw0WWE1YV9qMnF0ZlE5LUE/od6/public/values?alt=json-in-script&callback=JSON_CALLBACK';
      # $http.jsonp(url).success(function(data){
      #   callback(parseTableData(data));
      # });

      # @getData @success, @failure
  #   @$scope.data = @getData.get()




  # getData: ->
  #   url = 'https://spreadsheets.google.com/feeds/list/0Ahq_0At5tKNrdE1nUHJESkdsalVQM19sTE1WUTNHQXc/od6/private/full?alt=json-in-script&callback=JSON_CALLBACK'
  #   @$resource url,
  #       { alt: 'json', callback: 'JSON_CALLBACK' },
  #       fetch: { method: 'JSONP' }

    # @$resource url,
    #   {alt: 'json', callback: 'JSON_CALLBACK'},
    #   {query: {method: 'JSONP'}

    # @id = '0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc'
    # spreadsheet = $resource 'https://spreadsheets.google.com/feeds/list/:id/od6/public/values?alt=json-in-script',
    #     { id: @id, callback: 'JSON_CALLBACK' },
    #     fetch: { method: 'JSONP', isArray: false }
    # # spreadsheet = $resource 'https://spreadsheets.google.com/feeds/list/0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc/od6/public/values?alt=json-in-script',
    # # # spreadsheet = $resource 'https://docs.google.com/spreadsheet/pub?key=0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc&output=html',
    # #   callback: 'JSON_CALLBACK',
    # #     get:
    # #       method: 'JSONP'

    # result = spreadsheet.query()
    # console.log result



angular.module('quizingtonApp')
  .controller 'mainCtrl', ['$scope','spreadsheet','$http', MainCtrl]


# class DocService
#   constructor: ($resource) ->
#     Doc = $resource 'https://docs.google.com/spreadsheet/pub?key=0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc&output=html'
#       callback: 'JSON_CALLBACK',
#         get:
#           method: 'JSONP'



# angular.module('quizApp').service 'docService', [DocService]

# class Spreadsheet

# # @$inject: ['$http']

# constructor: (@source) ->
# if (@source.match(/http(s)*:/))
#   @url = @source
#   try
#     @key = @url.match(/key=(.*?)&/)[1]
#   catch error
#     @key = @url.match(/(cells|list)\/(.*?)\//)[2]
# else
#   @key = @source
# @jsonCellsUrl = "http://spreadsheets.google.com/feeds/cells/" + @key + "/od6/public/basic?alt=json-in-script"
# @jsonListUrl = "http://spreadsheets.google.com/feeds/list/" + @key + "/od6/public/basic?alt=json-in-script"
# @jsonUrl = @jsonCellsUrl

# initialize: ->
# @$http
#   .jsonp($jsonCellsUrl)
#   .success
#   .failure



