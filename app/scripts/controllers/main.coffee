'use strict'

angular.module('tastyApp')
  .controller 'MainCtrl', ($scope, RecipeBook, Recipe) ->

    $scope.recipes = RecipeBook.all()

    $scope.addRecipe = ->
      recipe = new Recipe($scope.name)
      RecipeBook.add(recipe)
      $scope.name = ''

  .controller 'RecipeCtrl', ($scope, $routeParams, RecipeBook, Recipe, Ingredient) ->

    $scope.recipe = RecipeBook.get($routeParams.name) ? new Recipe

    $scope.addIngredient = ->
      ingredient = new Ingredient($scope.amount, $scope.unit, $scope.name)
      $scope.recipe.addIngredient(ingredient)
      $scope.amount = ''
      $scope.unit = ''
      $scope.name = ''
