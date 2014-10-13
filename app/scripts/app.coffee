'use strict'

angular.module('tastyApp', [
  'recipeBook',
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/recipe/:name',
        templateUrl: 'views/recipe.html'
        controller: 'RecipeCtrl'
      .otherwise
        redirectTo: '/'

  .config (RecipeBookProvider) ->
    RecipeBookProvider.useAdjectives(true)
