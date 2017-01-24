docker build -t eggplanet/nuxt . && \
cd test/dummy && \
docker build -t docker-nuxt-test . && \
docker run -d -p 10000:3000 --name docker-nuxt-test docker-nuxt-test

sleep 10

string="server-rendered"
if curl -s "http://localhost:10000" | grep -q "$string"; then
  echo "Success"
  exit 0
else
  echo "Error"
  exit 1
fi
