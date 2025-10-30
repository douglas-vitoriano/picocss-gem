# spec/picocss/dependencies_spec.rb

require "spec_helper"

RSpec.describe "\e[32m-------------------- Gem Dependencies --------------------\e[0m\n" do
  after(:all) do
    puts "\n\e[32m-------------------- Fim Gem Dependencies --------------------\e[0m\n"
  end

  it "tem bundler >= 2.0" do
    expect(Bundler::VERSION.to_f).to be >= 2.0
  end

  it "verifica Rails compatível se instalado" do
    if Object.const_defined?("Rails") && Rails.const_defined?("VERSION")
      expect(Rails::VERSION::MAJOR).to be >= 5
    else
      skip "Rails não está instalado, teste ignorado"
    end
  end
end
