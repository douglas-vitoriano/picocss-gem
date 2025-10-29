# frozen_string_literal: true

require "spec_helper"
require "rails/generators"
require "generators/picocss/install_theme_generator"
require "fileutils"

RSpec.describe "Picocss::Generators::InstallThemeGenerator" do
  themes = %w[
    red pink fuchsia purple violet indigo blue
    cyan jade green lime yellow amber pumpkin
    orange sand grey zinc slate
  ]

  themes.each do |color|
    context "ao gerar o tema #{color}" do
      let(:destination_root) { File.expand_path("../../tmp/#{color}", __FILE__) }
      let(:generator_class) { Picocss::Generators.const_get("Install#{color.capitalize}Generator") }

      before do
        FileUtils.rm_rf(destination_root)
        generator_class.start([], destination_root: destination_root)
      end

      it "copia o arquivo pico.#{color}.min.css para app/assets/stylesheets" do
        path = File.join(destination_root, "app/assets/stylesheets/pico.#{color}.min.css")
        expect(File).to exist(path)
      end
    end
  end
end
