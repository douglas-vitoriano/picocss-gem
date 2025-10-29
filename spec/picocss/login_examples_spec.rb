# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Exemplo de tela de login com PicoCSS" do
  let(:output_dir) { File.expand_path("../../tmp/examples", __dir__) }
  let(:html_path) { File.join(output_dir, "login_example.html") }

  before do
    FileUtils.mkdir_p(output_dir)
  end

  it "gera um exemplo de tela de login com o tema padrão" do
    html = <<~HTML
      <!doctype html>
      <html lang="pt-BR">
      <head>
        <meta charset="utf-8">
        <title>Login - PicoCSS</title>
        <link rel="stylesheet" href="../../vendor/assets/stylesheets/pico.min.css">
      </head>
      <body>
        <main class="container">
          <h1>Entrar</h1>
          <form>
            <label for="email">E-mail</label>
            <input type="email" id="email" placeholder="Digite seu e-mail">

            <label for="password">Senha</label>
            <input type="password" id="password" placeholder="Digite sua senha">

            <button type="submit" class="contrast">Acessar</button>
          </form>
        </main>
      </body>
      </html>
    HTML

    File.write(html_path, html)

    expect(File).to exist(html_path)
    expect(File.read(html_path)).to include("<form>")
  end
end
