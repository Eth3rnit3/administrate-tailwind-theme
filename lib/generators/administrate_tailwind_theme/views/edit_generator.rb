require 'administrate/tailwind/theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class EditGenerator < Administrate::Tailwind::Theme::ViewGenerator
        source_root template_source_path

        def copy_edit
          copy_resource_template('edit')
          copy_resource_template('_form')
        end
      end
    end
  end
end
