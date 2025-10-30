# frozen_string_literal: true

require "fileutils"

module Picocss
  module Generators
    class InstallThemeGenerator
      THEMES = %w[
        red pink fuchsia purple violet indigo blue
        cyan jade green lime yellow amber pumpkin
        orange sand grey zinc slate min
      ].freeze

      TEMPLATES_DIR = File.expand_path("../templates", __dir__)

      def self.generate(theme = "min")
        theme = "min" unless THEMES.include?(theme)

        css_file =
          if theme == "min"
            File.join(TEMPLATES_DIR, "pico.min.css")
          else
            File.join(TEMPLATES_DIR, "pico.#{theme}.min.css")
          end

        dest_dir = "src/assets/stylesheets"
        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(css_file, File.join(dest_dir, "pico.css"))

        puts "Tema '#{theme}' copiado para #{dest_dir}/pico.css"
        puts "Adicione no layout: <link rel='stylesheet' href='/assets/css/pico.css' />"
        puts ""
      end
    end
  end
end
