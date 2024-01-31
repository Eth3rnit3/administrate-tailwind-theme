# frozen_string_literal: true

require 'administrate'
Administrate::Engine.stylesheets.clear # required to remove Administrate base styles

AdministrateTailwindTheme::Configuration.configure do |config|
  config.flowbite = true
end
