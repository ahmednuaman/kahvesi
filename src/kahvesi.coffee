_ = require 'lodash'
fs = require 'fs'
glob = require 'glob'

module.exports = (files) ->
  # The files we want to cover.
  coffeeFiles = []

  # What we're looking for.
  ext = 'coffee'

  # Flatten files into a nice array.
  files = _.flatten files

  # Expand any directories.
  _.forEach files, (file) ->
    fileExt = file.split('.').pop()

    if fileExt isnt ext
      # Check if this `file` is a directory. If it is then file all the `.coffee` files inside, otherwise ignore it
      if fs.lstatSync(file).isDirectory()
        # Check for trailing `/`.
        file = if file.charAt(file.length - 1) isnt '/' then file + '/' else file

        # Get coffee files in this directory and push it into the `coffeeFiles` array.
        coffeeFiles.concat glob.sync file + '**/*.' + ext

    else
      # Add this `.coffee` file to the `coffeeFiles` array.
      coffeeFiles.push file

  console.log coffeeFiles