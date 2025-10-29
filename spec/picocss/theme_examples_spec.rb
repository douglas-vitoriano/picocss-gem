# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Exemplos de temas PicoCSS" do
  let(:output_dir) { File.expand_path("../../tmp/theme_examples", __dir__) }

  before do
    FileUtils.mkdir_p(output_dir)
  end

  themes = %w[
    red pink fuchsia purple violet indigo blue
    cyan jade green lime yellow amber pumpkin
    orange sand grey zinc slate
  ]

  themes.each do |color|
    it "gera exemplo HTML com o tema #{color}" do
      theme_file = "../../vendor/assets/stylesheets/pico.#{color}.min.css"
      html_path = File.join(output_dir, "theme_#{color}.html")

      html = <<~HTML
        <!doctype html>
        <html lang="pt-BR">
        <head>
          <meta charset="utf-8">
          <title>Tema #{color.capitalize} - PicoCSS</title>
          <link rel="stylesheet" href="#{theme_file}">
        </head>
        <body>
          <main class="container">
            <h1>Tema #{color.capitalize}</h1>
            <p>Exemplo gerado automaticamente com o tema #{color}.</p>
            <button>Botão padrão</button>
            <button class="contrast">Botão contraste</button>
            <article>
              <header><strong>Card de exemplo</strong></header>
              <p>Este é um exemplo de card usando o tema #{color}.</p>
            </article>
          </main>
        </body>
        </html>
      HTML

      File.write(html_path, html)

      expect(File).to exist(html_path)
      expect(File.read(html_path)).to include("<button>")
    end
  end
end
