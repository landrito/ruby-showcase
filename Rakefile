# frozen_string_literal: true

# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

desc "Run the sample"
task :run_sample do
  require "./echo.rb"
end

desc "Generate the client library"
task :generate_client do
  Dir.mkdir("lib") unless File.exists?("lib")

  protoc_cmd = [
    "grpc_tools_ruby_protoc",
    "--proto_path=protos",
    "--ruby_out=lib",
    "--grpc_out=lib",
    "--ruby_gapic_out=lib",
    "--ruby_gapic_opt=configuration=config.yml",
    "protos/google/showcase/v1alpha3/echo.proto",
  ].join " "
  puts "#{protoc_cmd}"
  puts `#{protoc_cmd}`

  puts "Compiled 'protos/google/showcase/v1alpha3/echo.proto'. "
  puts "  Using the protopath 'protos'."
  puts "  Generating message classes in 'lib' with the 'ruby-out' option."
  puts "  Generating service classes in 'lib' with the 'grpc-out' option."
  puts "  Generating gapic library in 'lib' with the 'ruby-gapic-out' option."
end
