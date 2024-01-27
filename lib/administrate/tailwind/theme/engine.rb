require_relative 'application_helper'

module Administrate
  module Tailwind
    module Theme
      class Engine < ::Rails::Engine
        initializer 'administrate-tailwind-theme.assets.precompile' do |app|
          app.config.assets.precompile += %w[administrate-tailwind-theme.js administrate-tailwind-theme.css]
        end

        ActiveSupport.on_load :action_view do
          include Administrate::Tailwind::Theme::ApplicationHelper
        end
      end
    end
  end
end
