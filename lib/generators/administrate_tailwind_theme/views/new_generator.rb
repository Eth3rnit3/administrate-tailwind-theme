require 'administrate_tailwind_theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class NewGenerator < AdministrateTailwindTheme::ViewGenerator
        source_root template_source_path

        def copy_new
          copy_resource_template('new')
          copy_resource_template('_form')
        end
      end
    end
  end
end
