# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pry-byebug"
  s.version = "3.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Rodr\u{ed}guez", "Gopal Patel"]
  s.date = "2016-05-15"
  s.description = "Combine 'pry' with 'byebug'. Adds 'step', 'next', 'finish',\n    'continue' and 'break' commands to control execution."
  s.email = "deivid.rodriguez@gmail.com"
  s.extra_rdoc_files = ["CHANGELOG.md", "README.md"]
  s.files = ["CHANGELOG.md", "README.md"]
  s.homepage = "https://github.com/deivid-rodriguez/pry-byebug"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.0.3"
  s.summary = "Fast debugging with Pry."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pry>, ["~> 0.10"])
      s.add_runtime_dependency(%q<byebug>, ["~> 9.0"])
    else
      s.add_dependency(%q<pry>, ["~> 0.10"])
      s.add_dependency(%q<byebug>, ["~> 9.0"])
    end
  else
    s.add_dependency(%q<pry>, ["~> 0.10"])
    s.add_dependency(%q<byebug>, ["~> 9.0"])
  end
end
