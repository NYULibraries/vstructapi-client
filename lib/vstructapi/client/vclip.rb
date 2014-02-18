require_relative './vstruct'
module Vstructapi
  module Client
    class Vclip < Vstructapi::Client::Base
      self.element_name = "vclip"

      belongs_to :vstruct, class: Vstructapi::Client::Vstruct
    end
  end
end
