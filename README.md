# Source code of ultroneous.org

To run a local copy of the site:
```
make test
```

This requires [Docker](https://www.docker.com). It will say it's serving on `http://0.0.0.0:4000`, within the Docker container, but actually it will be accessible on `http://127.0.0.1:4000`, on the host machine.
