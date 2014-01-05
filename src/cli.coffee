# Use [Optimist](http://npmjs.org/package/optimist) to create a nice CLI.
kahvesi = require './kahvesi'
argv = require('optimist')
        .usage("Kahvesi is a coverage tool that uses Istanbul; simply pass in some files or directories and bingo.
          \nUsage: kahvesi [files]")
        .demand(1)
        .argv

# Pass the `argv` files glob to [`kahvesi.coffee`](kahvesi.html) to be processed.
kahvesi argv._