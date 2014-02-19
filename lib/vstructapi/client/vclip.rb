module Vstructapi
  module Client
    class Vclip < Vstructapi::Client::Base
      class << self
        def collection_path(prefix_options = {}, query_options = nil)
          prefix_options, query_options = split_options(prefix_options) if query_options.nil?
          puts "---------- in vclip:---------- "
          p prefix_options
          "#{self.prefix}vstructs/#{prefix_options[:vstruct_id]}/#{collection_name}#{query_string(query_options)}"
        end
      end
      self.element_name = "vclip"
    end
  end
end
