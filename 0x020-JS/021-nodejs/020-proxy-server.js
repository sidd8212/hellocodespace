
// create the proxy server listening on port 8000
var httpProxy = require('http-proxy');
var proxy = httpProxy.createProxyServer({
    target: 'https://hk24x7.com',
    secure: false,
    changeOrigin: true,
    headers: {
        host: 'hk24x7.com'
    }
});

// connect to the proxy server on port 8000 and proxy requests to port https of the target server (google.com)

var server = require('http').createServer(function(req, res) {
    proxy.web(req, res);
    });
server.listen(8031);

// Startup errors from `create-servers`
server.on('error', function (err) {
    console.error(err);
  });
   
  server.on('listening', function (servers) {
    console.log('listening!');
  });
