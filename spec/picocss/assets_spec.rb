# spec/picocss/assets_spec.rb

require "spec_helper"

RSpec.describe "\e[36m-------------------- Picocss Assets --------------------\e[0m\n"  do
  let(:css_path) { File.expand_path("../../../vendor/assets/stylesheets/pico.min.css", __FILE__) }

  after(:all) do
    puts "\n\e[36m-------------------- Fim Picocss Assets ----------------\e[0m\n"
  end

  it "Quando o arquivo pico.min.css esta presente - When the pico.min.css file is present" do
    expect(File).to exist(css_path)
  end

  it "Quando não está vazio - When it's not empty" do
    expect(File.read(css_path).size).to be > 0
  end

  it "Quando contém a palavra pico - When it contains the word peak" do
    content = File.read(css_path)
    expect(content.downcase).to include("pico")
  end
end
