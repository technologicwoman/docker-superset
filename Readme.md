### Superset on Docker

This project contains Superset Dockerfile and custom config of it.

* If you want change postgres database params build the image with --build-arg flag and set those to the value that you prefer:

```bash
    POSTGRES_PASSWORD=new-value
    POSTGRES_USER=new-value
    POSTGRES_DB=new-value
```