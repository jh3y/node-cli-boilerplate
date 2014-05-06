(function() {
  var assert, cli;

  assert = require("assert");

  cli = require("../lib/cli");

  suite("cli", function() {
    return suite("print", function() {
      return test("should throw an error when empty options", function() {
        return assert.throws((function() {
          return cli.print();
        }), Error);
      });
    });
  });

}).call(this);
