Package.describe({
  summary: "Easily integrate MadEye; remote pair program on your project"
});

Npm.depends({"madeye": "0.1.6"})

Package.on_use(function (api, where) {
  api.use(["coffeescript"], ["server"]);
  api.add_files(["main.coffee"], ["server"]);
});
