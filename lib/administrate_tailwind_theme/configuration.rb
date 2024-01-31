# frozen_string_literal: true

module AdministrateTailwindTheme
  class Configuration
    class << self
      attr_accessor :flowbite

      def configure
        yield(self)
      end
    end
  end
end
