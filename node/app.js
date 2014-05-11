var sys = require("sys");
var http = require("http");

http.createServer(function(request,response){
    sys.puts("Hello World");

    response.writeHeader(200, {"Content-Type": "text/plain"});
    response.write("Hello World");
    response.end();
}).listen(8080);

sys.puts("Server Running on 8080");
