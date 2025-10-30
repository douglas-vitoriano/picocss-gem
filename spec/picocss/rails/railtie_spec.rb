# frozen_string_literal: true

require "spec_helper"
require "picocss/railtie"

RSpec.describe Picocss::Railtie do
  before(:all) do
    puts "\e[35m-------------------- Railtie --------------------\e[0m\n"
  end

  after(:all) do
    puts "\n\e[35m-------------------- Fim Railtie --------------------\e[0m\n"
  end

  it "Quando carrega sem erros" do
    expect { Picocss::Railtie }.not_to raise_error
  end
end
