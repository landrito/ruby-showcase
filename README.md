# ruby-showcase
A sample of using gapic-generator-ruby and with gapic-showcase

## Usage

```sh
# Get proto dependencies.
git submodule update --init --recursive

# Build the generator.
bundle exec rake build_generator

# Generate the client library.
bundle exec rake gen

# Spin up the showcase server.
docker run --rm -d -p 7469:7469/tcp -p 7469:7469/udp \
  --name showcase-server \
  gcr.io/gapic-showcase/gapic-showcase:0.0.13

# Run the sample
bundle exec rake sample

# Stop the showcase server.
docker stop showcase-server
```