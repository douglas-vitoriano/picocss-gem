require "spec_helper"
require "generators/bridgetown/template_login_generator"
require "fileutils"

RSpec.describe Picocss::Generators::TemplateLoginGenerator do
  let(:tmp_dir) { Dir.mktmpdir }

  before(:all) do
    puts "\e[35m-------------------- TemplateLoginGenerator --------------------\e[0m\n"
  end

  before do
    @original_dir = Dir.pwd
    Dir.chdir(tmp_dir)
  end

  after do
    Dir.chdir(@original_dir)
    FileUtils.remove_entry(tmp_dir)
  end

  after(:all) do
    puts "\n\e[35m-------------------- Fim TemplateLoginGenerator --------------------\e[0m\n"
  end

  it "copia o template de login para src/_includes/login.html" do
    described_class.generate
    expect(File).to exist("src/_includes/login.html")
    content = File.read("src/_includes/login.html")
    expect(content).to include("<form")
  end
end
