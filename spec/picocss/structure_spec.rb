# frozen_string_literal: true

require "spec_helper"

RSpec.describe "\e[36m-------------------- Picocss gem structure --------------------\e[0m\n" do
  after(:all) do
    puts "\n\e[36m-------------------- Fim Gem Structure --------------------\e[0m\n"
  end

  it "Quando contém vendor/assets/stylesheets" do
    expect(Dir).to exist(File.expand_path("../../../vendor/assets/stylesheets", __FILE__))
  end

  it "Quando contém os templates de instalação" do
    expect(Dir).to exist(File.expand_path("../../../lib/generators/templates", __FILE__))
  end
end
