# radish-quickstart

## Run locally

```
PYTHONPATH=. radish features/
```

*Note: make sure to install radish*

## Use docker to run the quickstart example

```
docker build . -t radish-bdd/quickstart
docker run --rm -it radish-bdd/quickstart
```

## Use tox to run the quickstart example

```
tox
```
