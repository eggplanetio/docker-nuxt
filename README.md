# [eggplanet/nuxt](https://hub.docker.com/r/eggplanet/nuxt/)

The lightest nuxt image out there.

## Usage

Add the following to your `Dockerfile` in your nuxt project:

```
FROM eggplanet/nuxt
```

## Customize before build

If you need to customize your project before the nuxt build you can use `-- build-arg autobuild=no`. Dont forget to call nuxt build yourself:

```
FROM eggplanet/nuxt

# replace something in nuxt.config.js
RUN sed -i -e 's/apiserver\.dev/apiserver.production/g' nuxt.config.js

RUN ./node_modules/.bin/nuxt build
```

and run `docker build . --build-arg autobuild=no -t your_image_name`

## License

MIT
