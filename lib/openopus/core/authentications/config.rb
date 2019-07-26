# config.rb: -*- Ruby -*-  DESCRIPTIVE TEXT.
# 
#  Copyright (c) 2019 Brian J. Fox Opus Logica, Inc.
#  Author: Brian J. Fox (bfox@opuslogica.com)
#  Birthdate: Fri Jul 26 10:04:23 2019.
module Openopus
  module Core
    module Authentications
      module Config
        class << self
          mattr_accessor :user_class
          self.user_class = "Account"
        end
      end
    end
  end
end
