'use strict';

angular.module('tastyApp')
  .provider('RecipeBook', function() {
    this.$get = function() {
        var recipes = {};

        return {
          all: function() {
            return recipes;
          },
          get: function(name) {
            return recipes[name];
          },
          add: function (recipe) {
            recipes[recipe.name] = recipe;
          }
        };
      };
    });
