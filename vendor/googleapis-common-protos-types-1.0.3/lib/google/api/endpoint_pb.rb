# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/endpoint.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.api.Endpoint" do
    optional :name, :string, 1
    repeated :aliases, :string, 2
    repeated :features, :string, 4
    optional :target, :string, 101
    optional :allow_cors, :bool, 5
  end
end

module Google
  module Api
    Endpoint = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Endpoint").msgclass
  end
end