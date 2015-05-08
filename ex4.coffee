fs = require('fs')
fs.readFile process.argv[2], 'utf8', (err, data) ->
	err and throw new Error(err.stack)
	console.log data.split('\n').length - 1
