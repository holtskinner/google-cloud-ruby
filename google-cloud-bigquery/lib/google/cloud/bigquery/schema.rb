# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "google/cloud/bigquery/schema/field"

module Google
  module Cloud
    module Bigquery
      ##
      # # Table Schema
      #
      # A builder for BigQuery table schemas, passed to block arguments to
      # {Dataset#create_table} and {Table#schema}. Supports nested and
      # repeated fields via a nested block.
      #
      # @see https://cloud.google.com/bigquery/preparing-data-for-bigquery
      #   Preparing Data for BigQuery
      #
      # @example
      #   require "google/cloud/bigquery"
      #
      #   bigquery = Google::Cloud::Bigquery.new
      #   dataset = bigquery.dataset "my_dataset"
      #   table = dataset.create_table "my_table"
      #
      #   table.schema do |schema|
      #     schema.string "first_name", mode: :required
      #     schema.record "cities_lived", mode: :repeated do |cities_lived|
      #       cities_lived.string "place", mode: :required
      #       cities_lived.integer "number_of_years", mode: :required
      #     end
      #   end
      #
      class Schema
        def initialize
          @nested = nil
        end

        def fields
          @fields ||= @gapi.fields.map { |f| Field.from_gapi f }
        end

        def fields= new_fields
          @gapi.fields = Array(new_fields).map(&:to_gapi)
          @fields = @gapi.fields.map { |f| Field.from_gapi f }
        end

        def headers
          fields.map(&:name).map(&:to_sym)
        end

        def empty?
          fields.empty?
        end

        # @private
        def changed?
          return false if frozen?
          check_for_mutated_schema!
          @original_json != @gapi.to_json
        end

        # @private
        def freeze
          @gapi = @gapi.dup.freeze
          @gapi.fields.freeze
          @fields = @gapi.fields.map { |f| Field.from_gapi(f).freeze }
          @fields.freeze
          super
        end

        ##
        # @private Make sure any changes are saved.
        def check_for_mutated_schema!
          return if frozen?
          return if @gapi.frozen?
          return if @fields.nil?
          gapi_fields = Array(@fields).map(&:to_gapi)
          @gapi.update! fields: gapi_fields
        end

        # @private
        def self.from_gapi gapi
          gapi ||= Google::Apis::BigqueryV2::TableSchema.new fields: []
          gapi.fields ||= []
          new.tap do |s|
            s.instance_variable_set :@gapi, gapi
            s.instance_variable_set :@original_json, gapi.to_json
          end
        end

        # @private
        def to_gapi
          check_for_mutated_schema!
          @gapi
        end

        # @private
        def == other
          return false unless other.is_a? Schema
          to_gapi.to_h == other.to_gapi.to_h
        end

        ##
        # Adds a string field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def string name, description: nil, mode: :nullable
          add_field name, :string, nil, description: description, mode: mode
        end

        ##
        # Adds an integer field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def integer name, description: nil, mode: :nullable
          add_field name, :integer, nil, description: description, mode: mode
        end

        ##
        # Adds a floating-point number field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def float name, description: nil, mode: :nullable
          add_field name, :float, nil, description: description, mode: mode
        end

        ##
        # Adds a boolean field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def boolean name, description: nil, mode: :nullable
          add_field name, :boolean, nil, description: description, mode: mode
        end

        ##
        # Adds a bytes field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def bytes name, description: nil, mode: :nullable
          add_field name, :bytes, nil, description: description, mode: mode
        end

        ##
        # Adds a timestamp field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def timestamp name, description: nil, mode: :nullable
          add_field name, :timestamp, nil, description: description, mode: mode
        end

        ##
        # Adds a time field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def time name, description: nil, mode: :nullable
          add_field name, :time, nil, description: description, mode: mode
        end

        ##
        # Adds a datetime field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def datetime name, description: nil, mode: :nullable
          add_field name, :datetime, nil, description: description, mode: mode
        end

        ##
        # Adds a date field to the schema.
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        def date name, description: nil, mode: :nullable
          add_field name, :date, nil, description: description, mode: mode
        end

        ##
        # Adds a record field to the schema. A block must be passed describing
        # the nested fields of the record. For more information about nested
        # and repeated records, see [Preparing Data for BigQuery
        # ](https://cloud.google.com/bigquery/preparing-data-for-bigquery).
        #
        # @param [String] name The field name. The name must contain only
        #   letters (a-z, A-Z), numbers (0-9), or underscores (_), and must
        #   start with a letter or underscore. The maximum length is 128
        #   characters.
        # @param [String] description A description of the field.
        # @param [Symbol] mode The field's mode. The possible values are
        #   `:nullable`, `:required`, and `:repeated`. The default value is
        #   `:nullable`.
        # @yield [nested_schema] a block for setting the nested schema
        # @yieldparam [Schema] nested_schema the object accepting the
        #   nested schema
        #
        # @example
        #   require "google/cloud/bigquery"
        #
        #   bigquery = Google::Cloud::Bigquery.new
        #   dataset = bigquery.dataset "my_dataset"
        #   table = dataset.create_table "my_table"
        #
        #   table.schema do |schema|
        #     schema.string "first_name", mode: :required
        #     schema.record "cities_lived", mode: :repeated do |cities_lived|
        #       cities_lived.string "place", mode: :required
        #       cities_lived.integer "number_of_years", mode: :required
        #     end
        #   end
        #
        def record name, description: nil, mode: nil
          fail ArgumentError, "a block is required" unless block_given?
          empty_schema = Google::Apis::BigqueryV2::TableSchema.new fields: []
          nested_schema = self.class.from_gapi empty_schema
          yield nested_schema
          add_field name, :record, nested_schema.fields,
                    description: description, mode: mode
        end

        protected

        def add_field name, type, nested_fields, description: nil,
                      mode: :nullable
          # Make nested fields an empty array if nil
          nested_fields ||= []
          # Remove any existing field of this name
          fields.reject! { |f| f.name == name }
          fields << Field.new(name, type, description: description,
                                          mode: mode, fields: nested_fields)
        end
      end
    end
  end
end
