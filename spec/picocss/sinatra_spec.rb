# frozen_string_literal: true

require "spec_helper"
require "picocss/sinatra"

RSpec.describe Picocss::Sinatra do
  before(:all) do
    puts "\e[35m-------------------- Sinatra --------------------\e[0m\n"
  end

  after(:all) do
    puts "\n\e[35m-------------------- Fim Sinatra --------------------\e[0m\n"
  end

  it "Quando define o módulo Picocss::Sinatra" do
    expect(defined?(Picocss::Sinatra)).to eq("constant")
  end

  it "Quando pode ser registrado em um app Sinatra" do
    app = Class.new(Sinatra::Base)
    expect { app.register(Picocss::Sinatra) }.not_to raise_error
  end
end
