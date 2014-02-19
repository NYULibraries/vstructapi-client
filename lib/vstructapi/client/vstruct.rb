require_relative './vclip'
module Vstructapi
  module Client
    class Vstruct < Vstructapi::Client::Base
      self.element_name = "vstruct"

      def vclips
        puts "==================== in Vstructapi ============================"
        p @attributes
        p @attributes['id']
        p self.class
        p Vstructapi::Client::Vstruct.prefix
        Vstructapi::Client::Vclip.find(:all, from: "#{Vstructapi::Client::Vstruct.prefix}vstructs/#{@attributes['id']}/vclips")
      end
    end
  end
end
