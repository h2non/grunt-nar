# grunt-nar [![Build Status](https://travis-ci.org/h2non/grunt-nar.svg?branch=master)][travis] [![Dependency Status](https://gemnasium.com/h2non/grunt-nar.png)][gemnasium] [![NPM version](https://badge.fury.io/js/grunt-nar.png)][npm]

> Create and extract [nar][nar] archives from [Grunt][grunt]

## Getting Started

This plugin requires Grunt `~0.4.2`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
$ npm install grunt-nar --save-dev
```

Once the plugin has been installed, it may be enabled 
inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-nar');
```

## The "nar" task

### Overview
In your project's Gruntfile, add a section named `nar` to the data object passed into `grunt.initConfig()`

```js
grunt.initConfig({
  nar: {
    options: {
      // Task-specific options go here.
    },
    your_target: {
      // Target-specific file lists and/or options go here.
    },
  },
})
```

### Options

#### options.separator
Type: `String`
Default value: `',  '`

A string value that is used to do something with whatever.

#### options.punctuation
Type: `String`
Default value: `'.'`

A string value that is used to do something else with whatever else.

### Usage Examples

#### Default Options
In this example, the default options are used to do something with whatever. So if the `testing` file has the content `Testing` and the `123` file had the content `1 2 3`, the generated result would be `Testing, 1 2 3.`

```js
grunt.initConfig({
  nar: {
    options: {},
    files: {
      'dest/default_options': ['src/testing', 'src/123'],
    }
  }
})
```

#### Custom Options
In this example, custom options are used to do something else with whatever else. So if the `testing` file has the content `Testing` and the `123` file had the content `1 2 3`, the generated result in this case would be `Testing: 1 2 3 !!!`

```js
grunt.initConfig({
  nar: {
    options: {
      separator: ': ',
      punctuation: ' !!!',
    },
    files: {
      'dest/default_options': ['src/testing', 'src/123'],
    },
  },
})
```

## License

[MIT](http://opensource.org/licenses/MIT) © Tomas Aparicio

[nar]: https://github.com/h2non/nar
[travis]: https://travis-ci.org/h2non/grunt-nar
[gemnasium]: https://gemnasium.com/h2non/grunt-nar
[npm]: http://npmjs.org/package/grunt-nar
[grunt]: http://gruntjs.com
[example]: https://github.com/h2non/grunt-nar/blob/master/Gruntfile.js
