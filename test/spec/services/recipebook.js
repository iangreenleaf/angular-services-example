'use strict';

describe('Service: RecipeBook', function () {

  // load the service's module
  beforeEach(module('tastyApp'));

  // instantiate service
  var RecipeBook;
  beforeEach(inject(function (_RecipeBook_) {
    RecipeBook = _RecipeBook_;
  }));

  it('should do something', function () {
    expect(!!RecipeBook).toBe(true);
  });

});
