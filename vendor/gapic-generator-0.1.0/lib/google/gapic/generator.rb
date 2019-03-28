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

require "active_support/inflector"

module Google
  module Gapic
    module Generator
      def self.find type = nil
        type ||= "default"
        type_const = ActiveSupport::Inflector.camelize type
        require "google/gapic/generators/#{type}_generator"
        Kernel.const_get "Google::Gapic::Generators::#{type_const}Generator"
      end
    end
  end
end
