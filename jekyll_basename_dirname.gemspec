require_relative 'lib/jekyll_basename_dirname/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  github = 'https://github.com/mslinn/jekyll_basename_dirname'

  spec.authors     = ['Mike Slinn']
  spec.bindir      = 'exe'
  spec.description = <<~END_OF_DESC
    This Jekyll plugin provides 3 Liquid filters: dirname, basename and basename_without_extension.
  END_OF_DESC
  spec.email    = ['mslinn@mslinn.com']
  spec.files    = Dir['.rubocop.yml', 'LICENSE.*', 'Rakefile', '{lib,spec}/**/*', '*.gemspec', '*.md']
  spec.homepage = 'https://www.mslinn.com/jekyll_plugins/jekyll_basename_dirname.html'
  spec.license  = 'MIT'
  spec.metadata = {
    'allowed_push_host' => 'https://rubygems.org',
    'bug_tracker_uri'   => "#{github}/issues",
    'changelog_uri'     => "#{github}/CHANGELOG.md",
    'homepage_uri'      => spec.homepage,
    'source_code_uri'   => github,
  }
  spec.name                 = 'jekyll_basename_dirname'
  spec.platform             = Gem::Platform::RUBY
  spec.post_install_message = <<~END_MESSAGE

    Thanks for installing #{spec.name}!

  END_MESSAGE
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 2.6.0'
  spec.summary               = 'This Jekyll plugin provides 3 Liquid filters: dirname, basename and basename_without_extension.'
  spec.test_files            = spec.files.grep(%r!^(test|spec|features)/!)
  spec.version               = JekyllBasenameDirnameVersion::VERSION

  spec.add_dependency 'jekyll', '>= 3.5.0'
  spec.add_dependency 'jekyll_plugin_logger'
end
