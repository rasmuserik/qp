if(typeof Package !== "undefined") {
    Package.describe({
        summary: "Collection of utility functions"
    });

    Package.on_use(function (api) {
        var both = ['client', 'server'];
        api.use(['coffeescript'], both);
        api.add_files('qp.litcoffee', both);
    });

    Package.on_test(function (api) {
    });
}
