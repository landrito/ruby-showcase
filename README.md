# Ruby Showcase

An example of using [gapic-generator-ruby](https://github.com/googleapis/gapic-generator-ruby)
to generate a [simple API](protos/google/showcase/v1alpha3/echo.proto).

## Dependencies

To run this example you must install recent versions of the following:

  + Ruby [install](https://www.ruby-lang.org/en/documentation/installation)
  + Docker [install](https://docs.docker.com/install)

## Usage

```sh
# Generate the client library.
bundle exec rake gen

# Spin up the showcase server.
docker run --rm -d -p 7469:7469/tcp -p 7469:7469/udp \
  --name showcase-server \
  gcr.io/gapic-showcase/gapic-showcase:0.0.13

# Run the sample.
bundle exec rake sample

# Stop the showcase server.
docker stop showcase-server
```
