# frozen_string_literal: true

require "fileutils"
require "pathname"

RSpec.describe "\e[36m-------------------- PicoCSS Generators Templates --------------------\e[0m\n" do
  ROOT = Pathname.new(File.expand_path("../..", __dir__))
  TEMPLATES_DIR = ROOT.join("lib/generators/templates")

  after(:all) do
    puts "\n\e[36m-------------------- Fim PicoCSS Templates --------------------\e[0m\n"
  end

  it "verifica se o diretório de templates existe" do
    expect(TEMPLATES_DIR.directory?).to be true
  end

  it "verifica se o template de login existe" do
    expect(TEMPLATES_DIR.join("login.html.erb")).to exist
  end

  it "verifica se os temas CSS existem" do
    themes = %w[
      red pink fuchsia purple violet indigo blue
      cyan jade green lime yellow amber pumpkin
      orange sand grey zinc slate min
    ]

    themes.each do |color|
      file =
        if color == "min"
          TEMPLATES_DIR.join("pico.min.css")
        else
          TEMPLATES_DIR.join("pico.#{color}.min.css")
        end

      expect(file).to exist, "Esperado: #{file} — não encontrado!"
    end
  end

  it "garante que os generators usam o caminho correto" do
    generators = Dir[ROOT.join("lib/generators/**/*.rb")]

    generators.each do |file|
      content = File.read(file)

      expect(content).not_to include("../lib/generators/templates"),
        "❌ Caminho incorreto em #{file}"

      expect(content).to satisfy { |c|
        c.include?('File.expand_path("../templates", __dir__)') ||
        c.include?('File.expand_path("../../templates", __dir__)')
      }, "⚠️ Nenhum caminho de templates detectado em #{file}"
    end
  end
end
