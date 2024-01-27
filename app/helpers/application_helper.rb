module Helpers
  module ApplicationHelper
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
  end
end
