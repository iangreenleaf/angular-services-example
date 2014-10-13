'use strict';

angular.module('tastyApp')
  .factory('RecipeBook', function () {
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
  });
