require "openopus/core/authentications/version"
require "openopus/core/authentications/config"
require "openopus/core/authentications/engine"

module Openopus
  module Core
    module Authentications
      def self.config(&block)
        if block
          block.call(Openopus::Core::Authentications::Config)
        else
          Openopus::Core::Authentications::Config
        end
      end
    end
  end
end
