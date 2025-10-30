# frozen_string_literal: true

require "fileutils"
require "rails/generators"

module Picocss
  module Generators
    module Rails
      class InstallThemeGenerator < ::Rails::Generators::Base
        argument :theme, type: :string, default: "min", banner: "Theme name"
        class_option :destination_root, type: :string, default: "app/assets/stylesheets"

        THEMES = %w[
          red pink fuchsia purple violet indigo blue
          cyan jade green lime yellow amber pumpkin
          orange sand grey zinc slate min
        ].freeze

        TEMPLATES_DIR = File.expand_path("../templates", __dir__)
        source_root TEMPLATES_DIR

        def copy_theme_file
          theme_to_use = THEMES.include?(theme) ? theme : "min"

          css_file =
            if theme_to_use == "min"
              File.join(TEMPLATES_DIR, "pico.min.css")
            else
              File.join(TEMPLATES_DIR, "pico.#{theme_to_use}.min.css")
            end

          dest_dir = options[:destination_root]
          FileUtils.mkdir_p(dest_dir)
          FileUtils.cp(css_file, File.join(dest_dir, "pico.css"))

          puts "Tema '#{theme_to_use}' copiado para #{dest_dir}/pico.css"
          puts "Adicione no layout: <%= stylesheet_link_tag 'pico.css' %>"
          puts ""
        end
      end
    end
  end
end
