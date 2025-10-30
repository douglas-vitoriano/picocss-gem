# frozen_string_literal: true

require "fileutils"
require "rails/generators"

module Picocss
  module Generators
    class InstallGenerator < Rails::Generators::Base
      TEMPLATES_DIR = File.expand_path("../templates", __dir__)
      source_root TEMPLATES_DIR

      def copy_stylesheet
        dest_dir = "app/assets/stylesheets"
        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(File.join(TEMPLATES_DIR, "pico.min.css"), File.join(dest_dir, "pico.css"))

        say "✅ Tema padrão 'min' copiado para #{dest_dir}/pico.css", :green
        say "Adicione no layout: <%= stylesheet_link_tag 'pico.css' %>", :yellow
      end
    end
  end
end
