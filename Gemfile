# frozen_string_literal: true

source "https://rubygems.org"

# Add the Ruby GAPIC micro-generator to the project.
gem "gapic-generator", path: "../gapic-generator-ruby/gapic-generator"
gem "gapic-generator-cloud", path: "../gapic-generator-ruby/gapic-generator-cloud"

# Add dependencies for the generated code to the project.
gem "googleapis-common-protos-types",
    github: "googleapis/common-protos-ruby",
    branch: "annotations-prerelease"
gem "google-gax", "~> 1.0"

# Add protoc project and make it available during build steps.
# the executable is named 'grpc_tools_ruby_protoc'.
gem "grpc-tools", "~> 1.18"

# Add standard Ruby build tools to the project.
gem "rake", "~> 10.0"
