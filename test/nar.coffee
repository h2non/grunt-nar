grunt = require 'grunt'
assert = require 'assert'
base = "#{__dirname}/../.tmp"

[ async, nar, hu ] = grunt.file.expand { cwd: "#{base}" }, '*.nar'

describe 'create', ->

  describe 'unique', ->

    it 'should exist the archive', ->
      assert.equal grunt.file.exists("#{base}/#{nar}"), true

  describe 'multiple', ->

    it 'should exists the hu archive', ->
      assert.equal grunt.file.exists("#{base}/#{hu}"), true

    it 'should exists the async archive', ->
      assert.equal grunt.file.exists("#{base}/#{async}"), true

describe 'extract', ->

  describe 'unique', ->

    it 'should exists package.json', ->
      assert.equal grunt.file.exists("#{base}/extract/package.json"), true

    it 'should exists .nar.json', ->
      assert.equal grunt.file.exists("#{base}/extract/.nar.json"), true

    it 'should exists node_modules directory', ->
      assert.equal grunt.file.exists("#{base}/extract/node_modules"), true

    it 'should exists hu dependency package', ->
      assert.equal grunt.file.exists("#{base}/extract/node_modules/hu"), true

    it 'should exists async dependency package', ->
      assert.equal grunt.file.exists("#{base}/extract/node_modules/async"), true

    it 'should exists .bin directory', ->
      assert.equal grunt.file.exists("#{base}/extract/node_modules/.bin"), true

  describe 'multiple', ->

    it 'should exists package.json', ->
      assert.equal grunt.file.exists("#{base}/extract-multiple/package.json"), true

    it 'should exists .nar.json', ->
      assert.equal grunt.file.exists("#{base}/extract-multiple/.nar.json"), true

    it 'should exists hu.js', ->
      assert.equal grunt.file.exists("#{base}/extract-multiple/hu.js"), true
