module Vstructapi
  module Client
    class Vstruct < Vstructapi::Client::Base
      self.element_name = "vstruct"

      has_many :vclips
    end
  end
end
