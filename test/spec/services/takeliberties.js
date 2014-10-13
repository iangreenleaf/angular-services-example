'use strict';

describe('Service: takeLiberties', function () {

  // load the service's module
  beforeEach(module('tastyApp'));

  // instantiate service
  var takeLiberties;
  beforeEach(inject(function (_takeLiberties_) {
    takeLiberties = _takeLiberties_;
  }));

  it('should do something', function () {
    expect(!!takeLiberties).toBe(true);
  });

});
