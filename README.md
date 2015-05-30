Dockerfile for Development using Go Language
=====

## Build Image

* git clone

```zsh
git clone https://github.com/ysaotome/docker-go-dev
```

* docker build

```zsh
docker build --rm -t ysaotome/go-dev go-dev
```

## Example usage

```zsh
docker run --rm -it -v /path/to/dev:/root/go/src/dev ysaotome/go-dev zsh
```

* This software is released under the MIT License, see LICENSE.txt.


