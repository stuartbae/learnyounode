find = require './ex6module.js'
find process.argv[2], process.argv[3], (err, files) ->
	throw err if err
	files.forEach (file) ->
		console.log file

