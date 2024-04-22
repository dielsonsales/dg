# Jekyll Blog Docker image

See [Jekyll Home Page](https://jekyllrb.com/)

Based on [digital-garden-jekyll-template](https://github.com/maximevaillancourt/digital-garden-jekyll-template).

## Build the Dockerfile

```bash
chmod +x server.sh build.sh create.sh
docker build -t digital_garden .
```

## Run the blog

```bash
docker run -it --rm -p 8080:80 -v $PWD/digital_garden:/digital_garden digital_garden /server.sh
```

Then access it from http://localhost:8080

## Build the final version

```bash
docker run -it --rm -p 8080:80 -v $PWD/digital_garden:/digital_garden digital_garden /build.sh
```
