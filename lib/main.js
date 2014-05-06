(function() {
  var cli, colors, err, pkg, program;

  program = require("commander");

  colors = require("colors");

  pkg = require("../package.json");

  cli = require("./cli");

  program.version(pkg.version).option("-m, --message [message]", "set message to be printed.");

  program.on("--help", function() {
    console.log("  Examples:");
    console.log("");
    console.log("    $ " + pkg.name + " --message hello");
  });

  program.parse(process.argv);

  if (process.argv.length === 2) {
    program.help();
  } else {
    try {
      cli.print({
        message: program.message
      });
    } catch (_error) {
      err = _error;
      console.log("[", "node-cli-boilerplate".white, "]", err.toString().red);
    }
  }

}).call(this);
