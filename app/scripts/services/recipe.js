'use strict';

angular.module('tastyApp')
  .factory('Recipe', function () {
    var Recipe = function Recipe(name) {
      this.name = name;
      this.ingredients = [];
    }

    Recipe.prototype.addIngredient = function(ingredient) {
      this.ingredients.push(ingredient);
    }

    return Recipe
  });
