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

app.directive "ngFixed", ($window) ->
  (scope, element, attrs) ->
    scroll = ->
      rect = document.body.getBoundingClientRect()
      pixelsDown = -rect.top
      scale = 1 + Math.max(0, pixelsDown/2000)
      darken = pixelsDown / 400
      element.css('-webkit-transform', "translate3d(0,#{pixelsDown}px, 0) scale(#{scale})")
      element.css('-webkit-filter', "grayscale(#{darken})")
    scroll()
    $window.addEventListener 'scroll', scroll
