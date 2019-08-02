# openopus_core_authentications.rb: -*- Ruby -*-  The initializer for openopus-core-authentications.
# 
#  Copyright (c) 2019 Brian J. Fox Opus Logica, Inc.
#  Author: Brian J. Fox (bfox@opuslogica.com)
#  Birthdate: Sun Jul 21 12:19:34 2019.
Openopus::Core::Authentications.config do |config|
  # user_class is the name of the class that contains the model that you authenticate against.  It defaults to 'Credential'.
  config.user_class = 'Credential'
  config.omniauth_providers = [:facebook, :google, :github, :linked_in]
end
