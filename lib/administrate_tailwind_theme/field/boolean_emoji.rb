require 'administrate/field/base'

module AdministrateTailwindTheme
  module Field
    class BooleanEmoji < Administrate::Field::Base
      def to_emoji
        data ? '✅' : '❌'
      end
    end
  end
end
