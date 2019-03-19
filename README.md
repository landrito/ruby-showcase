# ruby-showcase
A sample of using gapic-generator-ruby and with gapic-showcase

## Usage

```sh
# Install the generator
bundle install

# Generate the client library.
bundle exec rake generate_client

# Spin up the showcase server.
docker run --rm -d -p 7469:7469/tcp -p 7469:7469/udp \
  --name showcase-server \
  gcr.io/gapic-showcase/gapic-showcase:0.0.13

# Run the sample
bundle exec rake run_sample

# Stop the showcase server.
docker stop showcase-server
```