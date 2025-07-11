# -*- encoding: utf-8 -*-
# stub: xcodeproj 1.25.1 ruby lib

Gem::Specification.new do |s|
  s.name = "xcodeproj".freeze
  s.version = "1.25.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eloy Duran".freeze]
  s.date = "2024-10-03"
  s.description = "Xcodeproj lets you create and modify Xcode projects from Ruby. Script boring management tasks or build Xcode-friendly libraries. Also includes support for Xcode workspaces (.xcworkspace) and configuration files (.xcconfig).".freeze
  s.email = "eloy.de.enige@gmail.com".freeze
  s.executables = ["xcodeproj".freeze]
  s.files = ["bin/xcodeproj".freeze]
  s.homepage = "https://github.com/cocoapods/xcodeproj".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Create and modify Xcode projects from Ruby.".freeze

  s.installed_by_version = "3.6.9".freeze

  s.specification_version = 3

  s.add_runtime_dependency(%q<atomos>.freeze, ["~> 0.1.3".freeze])
  s.add_runtime_dependency(%q<CFPropertyList>.freeze, [">= 2.3.3".freeze, "< 4.0".freeze])
  s.add_runtime_dependency(%q<claide>.freeze, [">= 1.0.2".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<colored2>.freeze, ["~> 3.1".freeze])
  s.add_runtime_dependency(%q<nanaimo>.freeze, ["~> 0.3.0".freeze])
  s.add_runtime_dependency(%q<rexml>.freeze, [">= 3.3.6".freeze, "< 4.0".freeze])
end
