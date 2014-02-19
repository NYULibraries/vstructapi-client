module Vstructapi
  module Client
    class Vstruct < Vstructapi::Client::Base
      self.element_name = "vstruct"

      def vclips
        Vstructapi::Client::Vclip.find(:all, from: "#{Vstructapi::Client::Vstruct.prefix}vstructs/#{@attributes['id']}/vclips")
      end
    end
  end
end
