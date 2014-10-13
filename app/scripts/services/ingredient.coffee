'use strict'

angular.module('tastyApp')
  .factory 'Ingredient', () ->
    class Ingredient
      constructor: (amount, unit, name) ->
        @amount = amount
        @unit = unit
        @name = name
      multiplyBy: (factor) ->
        @amount = @amount * factor
