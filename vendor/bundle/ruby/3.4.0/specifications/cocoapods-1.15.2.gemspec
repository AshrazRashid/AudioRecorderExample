# -*- encoding: utf-8 -*-
# stub: cocoapods 1.15.2 ruby lib

Gem::Specification.new do |s|
  s.name = "cocoapods".freeze
  s.version = "1.15.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eloy Duran".freeze, "Fabio Pelosin".freeze, "Kyle Fuller".freeze, "Samuel Giddins".freeze]
  s.date = "2024-02-06"
  s.description = "CocoaPods manages library dependencies for your Xcode project.\n\nYou specify the dependencies for your project in one easy text file. CocoaPods resolves dependencies between libraries, fetches source code for the dependencies, and creates and maintains an Xcode workspace to build your project.\n\nUltimately, the goal is to improve discoverability of, and engagement in, third party open-source libraries, by creating a more centralized ecosystem.".freeze
  s.email = ["eloy.de.enige@gmail.com".freeze, "fabiopelosin@gmail.com".freeze, "kyle@fuller.li".freeze, "segiddins@segiddins.me".freeze]
  s.executables = ["pod".freeze, "sandbox-pod".freeze]
  s.files = ["bin/pod".freeze, "bin/sandbox-pod".freeze]
  s.homepage = "https://github.com/CocoaPods/CocoaPods".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "The Cocoa library package manager.".freeze

  s.installed_by_version = "3.6.9".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<cocoapods-core>.freeze, ["= 1.15.2".freeze])
  s.add_runtime_dependency(%q<claide>.freeze, [">= 1.0.2".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<cocoapods-deintegrate>.freeze, [">= 1.0.3".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<cocoapods-downloader>.freeze, [">= 2.1".freeze, "< 3.0".freeze])
  s.add_runtime_dependency(%q<cocoapods-plugins>.freeze, [">= 1.0.0".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<cocoapods-search>.freeze, [">= 1.0.0".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<cocoapods-trunk>.freeze, [">= 1.6.0".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<cocoapods-try>.freeze, [">= 1.1.0".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<molinillo>.freeze, ["~> 0.8.0".freeze])
  s.add_runtime_dependency(%q<xcodeproj>.freeze, [">= 1.23.0".freeze, "< 2.0".freeze])
  s.add_runtime_dependency(%q<colored2>.freeze, ["~> 3.1".freeze])
  s.add_runtime_dependency(%q<escape>.freeze, ["~> 0.0.4".freeze])
  s.add_runtime_dependency(%q<fourflusher>.freeze, [">= 2.3.0".freeze, "< 3.0".freeze])
  s.add_runtime_dependency(%q<gh_inspector>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<nap>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<ruby-macho>.freeze, [">= 2.3.0".freeze, "< 3.0".freeze])
  s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.8".freeze])
  s.add_development_dependency(%q<bacon>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 12.3".freeze])
end
