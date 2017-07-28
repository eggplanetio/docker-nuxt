const server = require('nuxt-cluster');
server.start({
  rootDir: '/app/',
  address: '0.0.0.0',
  port: 3000
});
