Package.describe({
  summary: "Collection of utility functions"
});

Package.on_use(function (api) {
  var both = ['client', 'server'];
  api.use(['coffeescript'], both);
  api.add_files('qp.js', both);
});

Package.on_test(function (api) {
});
