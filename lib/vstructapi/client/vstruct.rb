module Vstructapi
  module Client
    class Vstruct < Vstructapi::Client::Base
      self.element_name = "vstruct"

      has_many :vclips, class_name: Vstructapi::Client::Vclip
    end
  end
end
