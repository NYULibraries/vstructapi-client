require 'active_resource'

module Rstar
  module Client
    class BaseResource < ::ActiveResource::Base
      self.site     = ENV['RSTAR_URL']
      self.user     = ENV['RSTAR_HTTP_USER']
      self.password = ENV['RSTAR_HTTP_PASSWORD']
    end
  end
end
