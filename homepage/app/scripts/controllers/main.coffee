'use strict'

app = angular.module('homepageApp')

app.controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ]

app.directive "ngVerticalSize", ($window) ->
  (scope, element, attrs) ->
    resize = ->
      element.css('height', document.documentElement.clientHeight * parseFloat(attrs.ngVerticalSize) + "px")

    resize()
    $window.addEventListener 'resize', resize
