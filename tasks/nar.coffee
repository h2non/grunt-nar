nar = require 'nar'
hu = require 'hu'
{ parallel } = require 'async'

module.exports = (grunt) ->

  grunt.registerMultiTask 'nar', 'Create and extract nar archives', ->

    archives = []
    done = @async()
    options = @options mode: 'create'

    onError = (err) ->
      grunt.fail.warn "Task failed: #{err}"
      done()

    onSuccess = ->
      grunt.log.writeln "Task completed successfully"
      done()

    @files.forEach (f) ->
      archives = archives.concat f.src
        .filter((filepath) -> grunt.file.exists filepath)
        .map (filepath) ->
          config = hu.clone options
          config.path = filepath
          config.dest = f.dest

          if options.mode is 'create'
            create config
          else
            extract config

      grunt.file.mkdir f.dest unless grunt.file.exists f.dest

    parallel archives, (err) ->
      return onError err if err
      onSuccess()

  create = (options) ->
    (done) ->
      nar.create(options)
        .on('entry', (entry) ->
          grunt.verbose.writeln "Adding file: #{entry.name}"
        ).on('error', (err) ->
          grunt.log.error "Cannot create archive: #{err}"
          done err
        ).on 'end', (path) ->
          grunt.log.writeln "Archive created in: #{path}"
          done()

  extract = (options) ->
    (done) ->
      nar.extract(options)
        .on('entry', (entry) ->
          grunt.verbose.writeln "Extracting file: #{entry.name}"
        ).on('error', (err) ->
          grunt.log.error "Cannot extract archive: #{err}"
          done err
        ).on 'end', (info) ->
          grunt.log.writeln "Archive extracted in: #{info.dest}"
          done()
