module NZICModels
  class Engine < ::Rails::Engine

    config.autoload_paths << File.expand_path("../../app/models", __FILE__)

    #initializer :model_autoload, before: :set_autoload_paths do |app|
#puts %W(#{root}/app/models)
#puts ActiveService::Configuration.path
      #app.config.autoload_paths << %W(#{root}/app/models)
    #end
  end
end
