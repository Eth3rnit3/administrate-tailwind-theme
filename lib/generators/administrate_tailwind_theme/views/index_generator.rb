# frozen_string_literal: true

require 'administrate_tailwind_theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class IndexGenerator < AdministrateTailwindTheme::ViewGenerator
        source_root template_source_path

        def copy_template
          copy_resource_template('index')
          copy_resource_template('_collection')
        end
      end
    end
  end
end
