# frozen_string_literal: true

require "spec_helper"
require "fileutils"
require "tmpdir"
require_relative "../../../lib/generators/rails/install_theme_generator"

RSpec.describe Picocss::Generators::Rails::InstallThemeGenerator, type: :generator do
  DEST_ROOT = File.expand_path("../../tmp", __dir__)

  before(:all) do
    FileUtils.rm_rf(DEST_ROOT)
    FileUtils.mkdir_p(DEST_ROOT)
    puts "\n\e[34m-------------------- InstallThemeGenerator Rails --------------------\e[0m\n"
  end

  after(:all) do
    puts "\n\e[34m-------------------- Fim InstallThemeGenerator Rails --------------------\e[0m\n"
  end

  THEMES = %w[
    red pink fuchsia purple violet indigo blue cyan jade green lime yellow amber
    pumpkin orange sand grey zinc slate min
  ].freeze

  THEMES.each do |color|
    it "copia o arquivo pico.css para o diretório temporário ao gerar o tema #{color}" do
      dest_dir = File.join(DEST_ROOT, color)
      FileUtils.mkdir_p(dest_dir)

      generator = described_class.new([color], { destination_root: dest_dir })
      generator.copy_theme_file

      expected_file = File.join(dest_dir, "pico.css")
      expect(File).to exist(expected_file),
        "Esperava que o arquivo #{expected_file} existisse para o tema #{color}"
    end
  end

  it "usa o tema padrão 'min' se tema inválido for passado" do
    dest_dir = File.join(DEST_ROOT, "invalid")
    FileUtils.mkdir_p(dest_dir)

    generator = described_class.new(["invalido"], { destination_root: dest_dir })
    generator.copy_theme_file

    expected_file = File.join(dest_dir, "pico.css")
    expect(File).to exist(expected_file),
      "Esperava que o tema padrão fosse copiado mesmo com argumento inválido"
  end
end
