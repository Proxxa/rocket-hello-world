# rocket-hello-world

An extremely simple Rust/Rocket HTTP server available on Docker Hub.

## Building

### Using Cargo

Clone the project, `cd` into it, and build using `cargo`.
```sh
git clone https://github.com/Proxxa/rocket-hello-world.git
cd rocket-hello-world
cargo build [-r]
```

The executable will be in `target/debug` or `target/release` depending on whether you include `-r`.

### Using Docker

There are two Dockerfiles provided with the project: Alpine and Busybox.
Clone the project, `cd` into it, and build using one of the following commands:
```sh
docker build -t rocket-hello-world -f docker/Alpine
docker build -t rocket-hello-world -f docker/Busybox
```

Busybox will generate a slightly smaller docker image than Alpine, but the difference is negligible.

## Running

### With the executable

If you've built the executable, simply `cd` to its location and run it as you would any other file. On most linux systems, this would be `./rocket-hello-world`.

### With Cargo

Similar to building,
```sh
git clone https://github.com/Proxxa/rocket-hello-world.git
cd rocket-hello-world
cargo run [-r]
```

### With Docker

#### From Docker Hub

There is an image available on Docker Hub. You can run it with the following command:
```sh
docker run proxxa/rocket-hello-world
```

#### From Source

1. Clone the project
2. `cd` into the folder
3. Build the desired docker file (`docker/Alpine` or `docker/Busybox`)
4. Run the local image.

```sh
git clone https://github.com/Proxxa/rocket-hello-world.git
cd rocket-hello-world
docker build -t rocket-hello-world -f docker/Busybox
docker run rocket-hello-world --name rocket-hello-world
```
