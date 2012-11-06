
var util = require('util');
var path = require('path');
var yeoman = require('../../../../');

module.exports = Generator;

function Generator( args, options, config ) {
  yeoman.generators.Base.apply( this, arguments );

  // setup the test-framework property, Gruntfile template will need this
  this.test_framework = options['test-framework'] || 'mocha';

  // resolved to mocha by default (could be switched to jasmine for instance)
  this.hookFor( 'test-framework', { as: 'app' } );
}

util.inherits(Generator, yeoman.generators.Base);

Generator.prototype.askFor = function askFor( argument ) {
  var cb = this.async();

  var prompts = [{
    name: 'useBackbone',
    message: 'Would you like to use Backbone in this application?',
    default: 'Y/n',
    warning: 'You probably should, Backbone\'s cool.'
  }

  ];

  this.prompt( prompts, function( err, props ) {
    if ( err ) {
      return this.emit( 'error', err );
    }
    
    this.useBackbone = (/y/i).test( props.useBackbone );

    cb();
  }.bind( this ));

};

Generator.prototype.writeFiles = function writeConfig() {
  // Copies the contents of the generator `templates`
  // directory into your users new application path
    this.directory( '.', '.' );

    var data = {
      useBackbone: this.useBackbone
    };

    this.template( 'app/index.html', path.join( 'app', 'index.html' ), data );
    this.template( 'app/scripts/config.coffee', path.join( 'app', 'scripts', 'config.coffee'), data );
};

// Generator.prototype.setupEnv = function setupEnv() {
// 	// Copies the contents of the generator `templates`
// 	// directory into your users new application path
//     this.directory('.','.');
// };
