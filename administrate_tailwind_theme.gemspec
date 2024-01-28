require_relative 'lib/administrate_tailwind_theme/version'

Gem::Specification.new do |spec|
  spec.name = 'administrate_tailwind_theme'
  spec.version = AdministrateTailwindTheme::VERSION
  spec.authors = ['Eth3rnit3']
  spec.email = ['eth3rnit3@gmail.com']

  spec.summary = 'A Tailwind CSS theme for the Administrate gem.'
  spec.description = 'This gem provides a custom Tailwind CSS theme for the Administrate gem used in Rails applications. It allows for easy integration and styling of the Administrate dashboard with Tailwind CSS.'
  spec.homepage = 'https://github.com/eth3rnit3/administrate-tailwind-theme'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/eth3rnit3/administrate-tailwind-theme'
  spec.metadata['changelog_uri'] = 'https://github.com/eth3rnit3/administrate-tailwind-theme/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.files += Dir.glob('vendor/assets/**/*')

  spec.add_dependency 'administrate', '~> 0.15'
  spec.add_dependency 'iso_country_codes', '~> 0.7.8'
  spec.add_dependency 'rails', '>= 7.1.3'
  spec.add_dependency 'tailwindcss-rails', '~> 2.0'
end
