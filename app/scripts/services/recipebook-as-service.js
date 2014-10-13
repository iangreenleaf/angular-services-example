'use strict';

angular.module('tastyApp')
  .service('RecipeBookAsAService', function () {
    var recipes = {};

    this.all = function() {
      return recipes;
    };

    this.get = function(name) {
      return recipes[name];
    };

    this.add = function (recipe) {
      recipes[recipe.name] = recipe;
    };
  });
