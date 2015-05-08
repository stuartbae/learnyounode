net = require 'net'
server = net.createServer (socket) ->
    dt = new Date()
    dates = [dt.getFullYear(), dt.getMonth() + 1, dt.getDate(), dt.getHours(), dt.getMinutes()].map (value) ->
        if value < 10 then '0' + value else '' + value
    socket.end("#{dates[0]}-#{dates[1]}-#{dates[2]} #{dates[3]}:#{dates[4]}\n")
server.listen(process.argv[2])
