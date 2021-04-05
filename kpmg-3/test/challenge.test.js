const expect = require('chai').expect;
let returnValue = require('../challenge.js');

describe('Sample Scenario', () => {
    it('return a', () => {
        expect(returnValue({x:{y:{z:"a"}}} , "x/y/z")).to.equal("a");
    });

    it('return d', () => {
        expect(returnValue({a:{b:{c: "d"}}} , "a/b/c")).to.equal("d");
    });

});
