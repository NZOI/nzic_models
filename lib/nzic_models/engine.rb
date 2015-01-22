module NZICModels
  class Engine < ::Rails::Engine

    #config.autoload_paths << File.expand_path("../../app/models", __FILE__)

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

    #initializer :model_autoload, before: :set_autoload_paths do |app|
#puts %W(#{root}/app/models)
#puts ActiveService::Configuration.path
      #app.config.autoload_paths << %W(#{root}/app/models)
    #end
  end
end
