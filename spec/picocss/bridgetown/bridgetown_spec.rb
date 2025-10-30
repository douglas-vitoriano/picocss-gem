# frozen_string_literal: true

require "spec_helper"
require "picocss/bridgetown"

RSpec.describe Picocss::Bridgetown do
  before(:all) do
    puts "\e[36m-------------------- Bridgetown --------------------\e[0m\n" 
  end

  after(:all) do
    puts "\n\e[36m-------------------- Fim Bridgetown ----------------\e[0m\n"
  end

  it "Quando carrega sem erros" do
    expect { Picocss::Bridgetown }.not_to raise_error
  end
end
