# grunt-nar [![Build Status](https://travis-ci.org/h2non/grunt-nar.svg?branch=master)][travis] [![Dependency Status](https://gemnasium.com/h2non/grunt-nar.png)][gemnasium] [![NPM version](https://badge.fury.io/js/grunt-nar.png)][npm]

> Create and extract [nar][nar] archives from [Grunt][grunt]

## Getting Started

This plugin requires Grunt `~0.4.2`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out 
the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains 
how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins

## Installation

```bash
$ npm install grunt-nar --save-dev
```

Once the plugin has been installed, it may be enabled 
inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-nar')
```

## Usage

### Create

```js
grunt.initConfig({
  nar: {
    create: {
      src: 'package.json',
      dest: 'archives/'
    }
  }
})
```

### Extract

```js
grunt.initConfig({
  nar: {
    options: { mode: 'extract' },
    src: 'app-0.1.0.nar',
    dest: 'files/'
  }
})
```

See [Gruntfile][example] for more examples
 
### Options

#### mode 
Type: `string` Default: `create`

Define the operation mode. Possible values are: `create` and `extract`

For aditional avaiable options, see [create][create-options] 
and [extract][extract-options] supported options in [nar][nar]

## License

[MIT](http://opensource.org/licenses/MIT) © Tomas Aparicio

[nar]: https://github.com/h2non/nar
[travis]: https://travis-ci.org/h2non/grunt-nar
[gemnasium]: https://gemnasium.com/h2non/grunt-nar
[npm]: http://npmjs.org/package/grunt-nar
[grunt]: http://gruntjs.com
[example]: https://github.com/h2non/grunt-nar/blob/master/Gruntfile.coffee
[create-options]: https://github.com/h2non/nar#narcreateoptions
[extract-options]: https://github.com/h2non/nar#narextractoptions
