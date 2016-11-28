Package.describe({
  name: 'dmassist:treasures',
  version: '0.0.1',
  summary: '',
  git: '',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.3.2.4');
  api.use([
    'kadira:flow-router',
    'kadira:blaze-layout',
    'mquandalle:jade',
    'templating',
    'reactive-var'
  ], 'client');

  api.use([
    'coffeescript',
    'mongo'
  ]);

  api.addFiles([
    'DAtreasure.tpl.jade',
    'DAtreasure.coffee'
  ], 'client');

  api.addFiles([
    'Treasure.coffee',
    'methods.coffee'
  ]);

  api.export('Treasure');
});

/*Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('dmassist:treasures');
  api.mainModule('treasures-tests.js');
});*/
