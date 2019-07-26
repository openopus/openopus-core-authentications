module Openopus
  module Core
    module Authentications
      class Engine < ::Rails::Engine
        isolate_namespace People
        initializer :append_migrations do |app|
          unless app.root.to_s.match(root.to_s)
            config.paths["db/migrate"].expanded.each do |expanded_path|
              app.config.paths["db/migrate"] << expanded_path
            end
          end
        end

        config.to_prepare do
          klass = Openopus::Core::Authentications::Config.user_class.classify.constantize rescue nil

          if klass
            klass.send(:has_many, :credentials, as: :credentialed, dependent: :destroy) 
            klass.send(:accepts_nested_attributes_for, :credentials)
          end
        end
      end
    end
  end
end
