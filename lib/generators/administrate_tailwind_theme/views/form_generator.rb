require 'administrate/tailwind/theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class FormGenerator < Administrate::Tailwind::Theme::ViewGenerator
        source_root template_source_path

        def copy_form
          copy_resource_template('_form')
        end
      end
    end
  end
end
