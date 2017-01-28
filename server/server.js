const server = require('nuxt-cluster');
server.start({
  srcDir: '/app',
  port: 3000,
});
