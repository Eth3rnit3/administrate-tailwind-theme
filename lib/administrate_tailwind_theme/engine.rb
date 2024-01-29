# frozen_string_literal: true

require_relative 'view_helper'

module AdministrateTailwindTheme
  class Engine < ::Rails::Engine
    initializer 'administrate_tailwind_theme.assets.precompile' do |app|
      app.config.assets.precompile += %w[administrate-tailwind-theme.js administrate-tailwind-theme.css]
    end

    ActiveSupport.on_load :action_view do
      include AdministrateTailwindTheme::ViewHelper
    end
  end
end
