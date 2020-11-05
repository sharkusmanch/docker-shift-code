# Shift Code Docker

Docker container for automated Shift Code redemption.

Uses https://github.com/trs/shift-code

## Building

```
VERSION="0.1.2"

docker buildx create --name builder
docker buildx use builder

docker buildx build --build-arg VERSION=${VERSION} --platform linux/amd64,linux/arm64,linux/arm/v7
```

## Running

```
docker run -it --rm -v ./data:'/root/.local/share/@shift-code' contentar/shift-code login
docker run -it --rm -v ./data:'/root/.local/share/@shift-code' contentar/shift-code redeem
```
