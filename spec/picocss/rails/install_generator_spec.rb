require "spec_helper"
require "rails/generators"
require "generators/rails/install_generator"
require "fileutils"

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Picocss::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  def setup
    super
    puts "\n\e[32m-------------------- Rails InstallGenerator --------------------\e[0m\n"
  end

  def teardown
    puts "\n\e[32m-------------------- Fim Rails InstallGenerator --------------------\e[0m\n"
    super
  end

  def test_creates_pico_css
    run_generator
    assert File.exist?(File.join(destination_root, "app/assets/stylesheets/pico.css"))
  end
end
