# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'partial_logging/version'

Gem::Specification.new do |spec|
  spec.add_runtime_dependency 'actionview', '~> 3.0', '>= 3.0.0'
  spec.authors     = ['Chris Maddox']
  spec.date        = '2014-01-12'
  spec.description = 'HTML comments for Rails partial rendering.'
  spec.email       = 'tyre77@gmail.com'
  spec.files       = %w(README.md LICENSE.md partial_logging.gemspec)
  spec.files      += Dir.glob('lib/**/*.rb')
  spec.files      += Dir.glob('spec/**/*')
  spec.homepage    = 'http://rubygems.org/gems/partial_logging'
  spec.licenses    = ['MIT']
  spec.name        = 'partial_logging'
  spec.summary     = 'HTML comments for Rails partial rendering'
  spec.test_files += Dir.glob('spec/**/*')
  spec.version     = PartialLogging::Version.to_s
end
