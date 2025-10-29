require "rails"

module Picocss
  class Railtie < ::Rails::Railtie
    initializer "picocss.assets.precompile" do |app|
      app.config.assets.precompile += %w[pico.min.css]
    end
  end
end
