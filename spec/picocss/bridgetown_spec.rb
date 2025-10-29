# frozen_string_literal: true

require "spec_helper"
require "picocss/bridgetown"

RSpec.describe Picocss::Bridgetown do
  it "Quando carrega sem erros" do
    expect { Picocss::Bridgetown }.not_to raise_error
  end
end
