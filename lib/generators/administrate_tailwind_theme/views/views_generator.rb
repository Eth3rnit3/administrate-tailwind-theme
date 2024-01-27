require 'administrate/tailwind/theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    class ViewsGenerator < Administrate::Tailwind::Theme::ViewGenerator
      def copy_templates
        view = 'administrate_tailwind_theme:views:'
        call_generator("#{view}index", resource_path, '--namespace', namespace)
        call_generator("#{view}show", resource_path, '--namespace', namespace)
        call_generator("#{view}new", resource_path, '--namespace', namespace)
        call_generator("#{view}edit", resource_path, '--namespace', namespace)
      end
    end
  end
end
