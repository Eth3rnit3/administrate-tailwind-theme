# frozen_string_literal: true

require 'administrate_tailwind_theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class LayoutGenerator < AdministrateTailwindTheme::ViewGenerator
        source_root template_source_path

        def copy_template
          copy_file(
            '../../../../app/views/layouts/admin/application.html.erb',
            'app/views/layouts/admin/application.html.erb'
          )

          call_generator('administrate_tailwind_theme:views:navigation')
          copy_resource_template('_stylesheet')
          copy_resource_template('_javascript')
          copy_resource_template('_flashes')
          copy_resource_template('_icons')
        end
      end
    end
  end
end
