# frozen_string_literal: true

require "spec_helper"
require "picocss/sinatra"

RSpec.describe Picocss::Sinatra do
  it "Quando define o módulo Picocss::Sinatra" do
    expect(defined?(Picocss::Sinatra)).to eq("constant")
  end

  it "Quando pode ser registrado em um app Sinatra" do
    app = Class.new(Sinatra::Base)
    expect { app.register(Picocss::Sinatra) }.not_to raise_error
  end
end
