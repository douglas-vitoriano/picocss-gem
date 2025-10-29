require "fileutils"

module Picocss
  module Generators
    class TemplateLoginGenerator
      def self.generate
        gem_path = Gem.loaded_specs["picocss-gem"].full_gem_path
        template_file = File.join(gem_path, "lib", "generators", "picocss", "templates", "login.html.erb")

        dest_dir = "src/_includes"
        FileUtils.mkdir_p(dest_dir)
        FileUtils.cp(template_file, File.join(dest_dir, "login.html"))

        puts "✅ Template de login copiado para #{dest_dir}/login.html"
      end
    end
  end
end
