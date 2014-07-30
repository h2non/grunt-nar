# grunt-nar [![Build Status](https://travis-ci.org/h2non/grunt-nar.svg?branch=master)][travis] [![Dependency Status](https://gemnasium.com/h2non/grunt-nar.png)][gemnasium] [![NPM version](https://badge.fury.io/js/grunt-nar.png)][npm]

> Create and extract [nar][nar] archives from [Grunt][grunt]

## Getting Started

This plugin requires Grunt `~0.4.2`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out 
the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains 
how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins

## Installation

Install [nar](https://github.com/h2non/nar) as global package
```bash
$ nar install -g nar
```

Install the plugin
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

For aditional available options, see [create][create-options] 
and [extract][extract-options] supported options in [nar][nar]

For `package.json` params, see the [configuration](https://github.com/h2non/nar#configuration) documentation

#### executable
Type: `boolean` Default: `false`

Creates an [executable binary-like](https://github.com/h2non/nar#executables) archive

The generated archive will be fully self-contained, which means 
that `node` and any runtime dependency will be embedded,
and therefore you just can deploy and run it as binary

#### os
Type: `string` Default: `current os`

Specify the target OS for the nar executable. 
Applied only if the `executable` options is `true`

Supported values are: `linux`, `darwin`, `sunos`

#### arch
Type: `string` Default: `current processor arch`

Specify the target processor architecture binary type for the nar executable. 
Applied only if the `executable` options is `true`

Supported values are: `x86`, `x64`

#### node
Type: `string` Default: `current node version`

Specify the node.js version to embed in the nar executable. 
Applied only if the `executable` options is `true`

Supported versions must be equal or higher that `0.8.x`

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
