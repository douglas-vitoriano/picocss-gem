require "spec_helper"
require "generators/bridgetown/install_theme_generator"
require "fileutils"

RSpec.describe Picocss::Generators::InstallThemeGenerator do
  let(:tmp_dir) { Dir.mktmpdir }

  before(:all) do
    puts "\e[33m-------------------- InstallThemeGenerator --------------------\e[0m\n"
  end

  before do
    @original_dir = Dir.pwd
    Dir.chdir(tmp_dir)
  end

  after do
    Dir.chdir(@original_dir)
    FileUtils.remove_entry(tmp_dir)
  end

  after(:all) do
    puts "\n\e[33m-------------------- Fim InstallThemeGenerator --------------------\e[0m\n"
  end

  it "copia o CSS do tema 'blue' para src/assets/stylesheets/pico.css" do
    described_class.generate("blue")
    expect(File).to exist("src/assets/stylesheets/pico.css")
    content = File.read("src/assets/stylesheets/pico.css")
    expect(content).to include("body")
  end

  it "usa o tema padrão 'min' se tema inválido for passado" do
    described_class.generate("invalido")
    expect(File).to exist("src/assets/stylesheets/pico.css")
  end
end
