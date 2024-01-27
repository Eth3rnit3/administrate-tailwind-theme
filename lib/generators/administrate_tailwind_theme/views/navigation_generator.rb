require 'administrate/tailwind/theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class NavigationGenerator < Administrate::Tailwind::Theme::ViewGenerator
        source_root template_source_path

        def copy_navigation
          copy_resource_template('_navigation')
        end
      end
    end
  end
end
