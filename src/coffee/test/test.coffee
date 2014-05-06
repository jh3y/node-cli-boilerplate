assert = require("assert")
cli = require("../lib/cli")
suite "cli", ->
	suite "print", ->
		test "should throw an error when empty options", ->
			assert.throws (->
				cli.print()
			), Error