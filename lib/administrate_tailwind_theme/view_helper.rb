# frozen_string_literal: true

module AdministrateTailwindTheme
  module ViewHelper
    def flash_types(key)
      case key.to_sym
      when :notice
        'Notice'
      when :alert
        'Alert'
      when :error
        'Error'
      else
        key.to_s.humanize
      end
    end

    def icon?(resource)
      lookup_context.find_all("administrate/navigation/icons/_#{resource}").any?
    end

    def flowbite?
      AdministrateTailwindTheme::Configuration.flowbite
    end

    def grouped_resources
      resources = Administrate::Namespace.new(namespace).resources_with_index_route.map do |resource|
        [group(resource), resource]
      end

      resources = resources.group_by { |group, _resource| group }
      resources.map do |group_name, g_resources|
        [
          group_name,
          g_resources.map(&:last)
        ]
      end
    end

    def group(resource)
      dashboard(resource).try(:group) || :default
    end

    def dashboard(resource)
      "#{resource.singularize.capitalize}Dashboard".constantize.new
    rescue ::NameError
      nil
    end
  end
end
