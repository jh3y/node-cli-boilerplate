program = require "commander"
colors = require "colors"
pkg = require "../package.json"
cli = require "./cli"

program
	.version(pkg.version)
	.option "-m, --message [message]", "set message to be printed."

program.on "--help", ->
	console.log "  Examples:"
	console.log ""
	console.log "    $ " + pkg.name + " --message hello"
	return

program.parse process.argv

if process.argv.length is 2
	program.help()
else
	try
		cli.print
			message: program.message
	catch err
		console.log "[", "node-cli-boilerplate".white, "]", err.toString().red
