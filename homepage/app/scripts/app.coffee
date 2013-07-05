'use strict'

app = angular.module('homepageApp', [])

app.config ($interpolateProvider) ->
  $interpolateProvider.startSymbol('#{')
  $interpolateProvider.endSymbol('}')
