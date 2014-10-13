'use strict'

describe 'Service: Ingredient', () ->

  # load the service's module
  beforeEach module 'tastyApp'

  # instantiate service
  Ingredient = {}
  beforeEach inject (_Ingredient_) ->
    Ingredient = _Ingredient_

  it 'should do something', () ->
    expect(!!Ingredient).toBe true
