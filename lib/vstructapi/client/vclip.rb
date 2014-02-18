module Vstructapi
  module Client
    # forward declaration
    class Vstruct < Vstructapi::Client::Base ; end
    class Vclip   < Vstructapi::Client::Base
      self.element_name = "vclip"

      belongs_to :vstruct, class_name: Vstructapi::Client::Vstruct
    end
  end
end
