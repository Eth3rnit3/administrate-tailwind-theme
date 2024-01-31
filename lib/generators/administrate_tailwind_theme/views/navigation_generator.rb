# frozen_string_literal: true

require 'administrate_tailwind_theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class NavigationGenerator < AdministrateTailwindTheme::ViewGenerator
        source_root template_source_path

        def copy_navigation
          copy_resource_template('_navigation')
          copy_resource_template('_default_sidebar')
          copy_resource_template('_flowbite_sidebar')
        end
      end
    end
  end
end
