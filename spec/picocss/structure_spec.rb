# frozen_string_literal: true

require "spec_helper"

RSpec.describe "Picocss gem structure" do
  it "Quando contém vendor/assets/stylesheets" do
    expect(Dir).to exist(File.expand_path("../../../vendor/assets/stylesheets", __FILE__))
  end

  it "Quando contém os templates de instalação" do
    expect(Dir).to exist(File.expand_path("../../../lib/generators/picocss/templates", __FILE__))
  end
end
