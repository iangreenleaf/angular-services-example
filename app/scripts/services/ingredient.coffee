'use strict'

angular.module('tastyApp')
  .factory 'Ingredient', (RecipeBook) ->
    class Ingredient
      constructor: (amount, unit, name) ->
        @amount = amount
        @unit = unit
        @name = if RecipeBook.adjectiveMode
                  "#{@_adjective()} #{name}"
                else
                  name

      multiplyBy: (factor) ->
        @amount = @amount * factor

      _adjective: ->
        chooseFrom = ["tasty", "delicious", "crunchy", "gorgeous", "shiny"]
        i = Math.floor(Math.random() * chooseFrom.length)
        chooseFrom[i]
