# lib/picocss/install_theme_generator.rb

module Picocss
  module Generators
    themes = %w[
      red pink fuchsia purple violet indigo blue
      cyan jade green lime yellow amber pumpkin
      orange sand grey zinc slate
    ]

    themes.each do |color|
      klass_name = "Install#{color.capitalize}Generator"

      const_set(klass_name, Class.new(Rails::Generators::Base) do
        source_root File.expand_path("templates", __dir__)

        define_method(:copy_theme_file) do
          theme_file = "pico.#{color}.min.css"
          target_path = "app/assets/stylesheets/#{theme_file}"
          copy_file theme_file, target_path
          say "✅ Tema '#{color}' instalado com sucesso!", :green
          say "Adicione no layout: <%= stylesheet_link_tag '#{theme_file}' %>", :yellow
        end
      end)
    end
  end
end
