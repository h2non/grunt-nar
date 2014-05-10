module.exports = (grunt) ->

  grunt.initConfig
    jshint:
      all: [
        "Gruntfile.js"
        "tasks/*.js"
        "<%= nodeunit.tests %>"
      ]
      options:
        jshintrc: ".jshintrc"

    clean:
      tests: [".tmp"]

    nar:
      create:
        src: 'package.json'
        dest: '.tmp/'

      createMultiple:
        src: ['node_modules/hu', 'node_modules/fw']
        dest: '.tmp/'

      extract:
        options: mode: 'extract'
        src: ".tmp/grunt-nar-*.nar"
        dest: '.tmp/extract'

      extractMultiple:
        options: mode: 'extract'
        src: [".tmp/hu-*.nar", ".tmp/fw-*.nar"]
        dest: '.tmp/extract-multiple'

    mochacli:
      options:
        compilers: ['coffee:coffee-script/register']
        timeout: 10000
        ignoreLeaks: false
        ui: 'bdd'
        reporter: 'spec'
      all:
        src: ['test/*.coffee']

  grunt.loadTasks "tasks"
  grunt.loadNpmTasks "grunt-contrib-clean"
  grunt.loadNpmTasks "grunt-mocha-cli"

  grunt.registerTask "test", [
    "clean"
    "nar"
    "mochacli"
  ]

  grunt.registerTask "default", ["test"]
