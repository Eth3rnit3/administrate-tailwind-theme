require 'administrate_tailwind_theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class FormGenerator < AdministrateTailwindTheme::ViewGenerator
        source_root template_source_path

        def copy_form
          copy_resource_template('_form')
        end
      end
    end
  end
end
