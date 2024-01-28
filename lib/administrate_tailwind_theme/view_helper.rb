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
  end
end
