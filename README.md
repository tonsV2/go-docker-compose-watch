# Quick start

In one terminal launch and watch the application by executing
```shell
make watch
```

In another terminal execute the below command to watch the logs 
```shell
make start
```

Make a change to the file [main.go](./main.go) and application should rebuild

# Issues
## Debug doesn't work - Connection refused
## `docker compose watch app` starts both the `app` service and the `nginx`


# Go + Docker Compose Watch Example

_Example of how to use the new `docker compose watch` command in a Go project to auto-reload containers upon file changes._

This repo is an accompanying example from [this blog post](https://lukerogerson.medium.com/go-projects-and-docker-compose-watch-e98af8c497bf).

[A seperate branch](https://github.com/Luke-Rogerson/go-docker-compose-watch/tree/air) contains a quick comparison setup with another popular live reloading tool for Go, [Air](https://github.com/cosmtrek/air).
