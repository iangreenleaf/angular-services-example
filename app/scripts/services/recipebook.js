'use strict';

angular.module('recipeBook', [])
  .provider('RecipeBook', function() {
    var adjectiveMode = false;
    this.useAdjectives = function(trueOrFalse) {
      adjectiveMode = trueOrFalse;
    };

    this.$get = function() {
      var recipes = {};

      return {
        adjectiveMode: true,
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
