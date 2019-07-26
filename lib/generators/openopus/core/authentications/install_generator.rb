# install_generator.rb: -*- Ruby -*-  DESCRIPTIVE TEXT.
# 
#  Copyright (c) 2019 Brian J. Fox Opus Logica, Inc.
#  Author: Brian J. Fox (bfox@opuslogica.com)
#  Birthdate: Fri Jul 26 14:09:43 2019.
module Openopus
  module Core
    module Authentications
      module Generators
        class InstallGenerator < Rails::Generators::Base
          source_root(File.expand_path("../templates", __FILE__))

          desc "Installs config/initializers/openopus_core_authentications.rb."

          def create_initializer
            template("configuration-template.rb", File.join('config','initializers','openopus_core_authentications.rb'))
          end
        end
      end
    end
  end
end
