require 'administrate/tailwind/theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class IndexGenerator < Administrate::Tailwind::Theme::ViewGenerator
        source_root template_source_path

        def copy_template
          copy_resource_template('index')
          copy_resource_template('_collection')
        end
      end
    end
  end
end
