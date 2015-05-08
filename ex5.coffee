path = require 'path'
fs = require 'fs'

dir_name = process.argv[2]
ext_name = '.' + process.argv[3]

fs.readdir dir_name, (err, files) ->
	(throw err) if err
	files.forEach (file_name) ->
    	console.log file_name if path.extname(file_name) is ext_name 
