require "rails/generators"

module Picocss
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      def copy_stylesheet
        copy_file "pico.min.css", "app/assets/stylesheets/pico.min.css"
      end
    end
  end
end