## Make a Docker image from `Dockerfiles/Dockerfile1`.

```sh
git clone https://github.com/nilforooshan/test.git
docker build -t docker_test:latest -f test/Dockerfiles/Dockerfile1 .
```

Test the local image.

```sh
mkdir -p /home/$(whoami)/Downloads/
mkdir -p /home/$(whoami)/Downloads/data/
echo "This is the data" > /home/$(whoami)/Downloads/data/datfile
docker run --rm -v /home/$(whoami)/Downloads/data:/mnt/data -it docker_test:latest
```

Push it to DockerHub.

```sh
docker login
docker tag docker_test:latest nilforooshan/docker_test:latest
docker push nilforooshan/docker_test:latest
```

---

## Make a Docker image from `Dockerfiles/Dockerfile2`.

```sh
git clone https://github.com/nilforooshan/test.git
docker build -t docker_test_r:latest -f test/Dockerfiles/Dockerfile2 .
```

Test the local image.

```sh
mkdir -p /home/$(whoami)/Downloads/
mkdir -p /home/$(whoami)/Downloads/data/
echo "This is the data" > /home/$(whoami)/Downloads/data/datfile
docker run --rm -v /home/$(whoami)/Downloads/data:/mnt/data -it docker_test_r:latest
```

Push it to DockerHub.

```sh
docker login
docker tag docker_test_r:latest nilforooshan/docker_test_r:latest
docker push nilforooshan/docker_test_r:latest
```
