# frozen_string_literal: true

require "spec_helper"
require "picocss/railtie"

RSpec.describe Picocss::Railtie do
  it "Quando carrega sem erros" do
    expect { Picocss::Railtie }.not_to raise_error
  end
end
