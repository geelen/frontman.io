'use strict'

app = angular.module('homepageApp', [])

app.config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

app.config ($interpolateProvider) ->
  $interpolateProvider.startSymbol('#{')
  $interpolateProvider.endSymbol('}')
