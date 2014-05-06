# node-cli-boilerplate

A simple node command line interface application boilerplate for getting up and running quickly.

it sets you up with a simple node app that basically acts like `echo`. You input a message with the message option and it prints it back to you.

it uses commander.js and colors as dependencies to aid with easy options parsing and aesthetically pleasing printing. As for dev dependencies mocha is included with a simple unit test set up for the print function. You can run this with `make test`. gulp is included if you wish to continue with the coffeescript source.

__Note::__ _uses gulp.js to convert coffeescript src but this isn't intrusive and you can just work with the javascript source._

### Getting started

* clone the repo

		git clone https://github.com/jh3y/node-cli-boilerplate.git

* install the dependencies

		cd node-cli-boilerplate
		npm install

* make the bin file executable

		chmod u+x bin/cli

* run the boilerplate with

		./bin/cli

* start hacking!
* run tests with

		make test

@jh3y
