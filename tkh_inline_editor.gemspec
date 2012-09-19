$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tkh_inline_editor/version"

# Describe your gem and declare its dependencies
Gem::Specification.new do |s|
  s.name        = "tkh_inline_editor"
  s.version     = TkhInlineEditor::VERSION
  s.authors     = ["Swami Atma"]
  s.email       = ["swami@TenThousandHours.eu"]
  s.homepage    = "https://github.com/allesklar/tkh_inline_editor"
  s.summary     = "HTML inline editor derived from the bootstrap-wysihtml5-rails gem."
  s.description = "HTML inline editor derived from the bootstrap-wysihtml5-rails gem to integrate it with the tkh_cms gem suite."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md", "CHANGELOG.md"]
  s.test_files = Dir["test/**/*"]
  
  s.add_dependency "railties", ">= 3.0"
  s.add_development_dependency "bundler", ">= 1.0"
  s.add_development_dependency "rake"
end
