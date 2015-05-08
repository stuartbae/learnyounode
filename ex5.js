// Generated by CoffeeScript 1.9.2
(function() {
  var dir_name, ext_name, fs, path;

  path = require('path');

  fs = require('fs');

  dir_name = process.argv[2];

  ext_name = '.' + process.argv[3];

  fs.readdir(dir_name, function(err, files) {
    err && console.log(err);
    return files.forEach(function(file_name) {
      if (path.extname(file_name) === ext_name) {
        return console.log(file_name);
      }
    });
  });

}).call(this);