# frozen_string_literal: true

require "spec_helper"

RSpec.describe Picocss do
  it "Quando tem uma versão definida - When you have a defined version" do
    expect(Picocss::VERSION).not_to be nil
  end

  it "Quando carrega sem erros - When it loads without errors" do
    expect { Picocss.load! }.not_to raise_error
  end

  it "Verifica compatibilidade com Rails, Bridgetown e Sinatra - Checks compatibility with Rails, Bridgetown and Sinatra." do
    rails_defined = defined?(Rails)
    bridgetown_defined = defined?(Bridgetown)
    sinatra_defined = defined?(Sinatra::Base)

    expect([rails_defined, bridgetown_defined, sinatra_defined].any?).to satisfy { |b| b == true || b == nil }
  end
end
