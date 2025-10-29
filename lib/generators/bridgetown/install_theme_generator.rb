require "fileutils"

module Picocss
  module Generators
    class InstallThemeGenerator
      THEMES = %w[
        red pink fuchsia purple violet indigo blue
        cyan jade green lime yellow amber pumpkin
        orange sand grey zinc slate min
      ]

      def self.generate(theme = "min")
        theme = "min" unless THEMES.include?(theme)
        puts "📦 Instalando tema PicoCSS '#{theme}' no projeto Bridgetown..."

        gem_path = Gem.loaded_specs["picocss-gem"].full_gem_path
        css_file = File.join(gem_path, "lib", "generators", "picocss", "templates", "pico.#{theme}.min.css")

        dest_dir = "src/assets/stylesheets"
        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(css_file, File.join(dest_dir, "pico.css"))

        puts "✅ Tema '#{theme}' copiado para #{dest_dir}/pico.css"
        puts "Adicione no layout: <link rel='stylesheet' href='/assets/css/pico.css' />"
      end
    end
  end
end
