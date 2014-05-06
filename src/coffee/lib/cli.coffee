colors = require "colors"
pkg = require "../package.json"
	
exports.print = print = (options) ->
	if options and options.message and typeof(options.message) is 'string'
		console.log "[", "node-cli-boilerplate".white, "]", options.message.toString().cyan
	else
		throw new Error 'no message defined to print!'
