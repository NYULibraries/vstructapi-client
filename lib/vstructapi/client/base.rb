require 'active_resource'

module Vstructapi
  module Client
    class Base < ::ActiveResource::Base
      class << self
        def element_path(id, prefix_options = {}, query_options = nil)
          prefix_options, query_options = split_options(prefix_options) if query_options.nil?
          "#{prefix(prefix_options)}#{collection_name}/#{id}#{query_string(query_options)}"
        end
        def collection_path(prefix_options = {}, query_options = nil)
          prefix_options, query_options = split_options(prefix_options) if query_options.nil?
          "#{prefix(prefix_options)}#{collection_name}#{query_string(query_options)}"
        end
      end

      self.site     = ENV['VSTRUCTAPI_URL']
      self.user     = ENV['VSTRUCTAPI_HTTP_USER']
      self.password = ENV['VSTRUCTAPI_HTTP_PASSWORD']
      self.prefix   = '/api/v0/'
    end
  end
end
