class Spreadsheet

  constructor: (@$http, @$q) ->

  get: (id) ->

    url = 'https://docs.google.com/document/d/1z2RfKcH6ZzkbR_3QQrWgoxWMV66qMG0qQxkbnunrRpw/pub?alt=json-in-script&callback=?&gid=0'
    request = @$http.jsonp(url)
    request.then (response) ->
      console.log 'here'
      console.log response

    # url = 'https://spreadsheets.google.com/feeds/cells/0AtNU_KBGgbVfdEdqM1VQUTlkME1sNkF1aDZlcW03TWc/od6/public/basic?alt=json-in-script'
    # expectedKey = "0Ago31JQPZxZrdHF2bWNjcTJFLXJ6UUM5SldEakdEaXc";
    # url = "http://spreadsheets.google.com/feeds/cells/" + expectedKey + "/od6/public/basic?alt=json-in-script";

    # @$http.jsonp( "http://spreadsheets.google.com/feeds/list/0Ak0qDiMLT3XddHlNempadUs1djdkQ0tFLWF6ci1rUUE/od6/public/values?alt=json-in-script&callback=?&gid=0")
    # .success (json) ->
    #   console.log 'success'



    # format = '&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=JSON_CALLBACK';
    # query = 'select * from yahoo.finance.historicaldata where symbol = "' + symbol + '" and startDate = "' + start + '" and endDate = "' + end + '"';
    # url = 'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent(query) + format;

    # $http.jsonp(url).success(function(json) {
    #     quotes = json.query.results.quote;
    #     deferred.resolve(quotes);
    # });
    # return deferred.promise;

angular.module('quizingtonApp')
  .factory 'spreadsheet', ($http,$q) -> new Spreadsheet($http,$q)
