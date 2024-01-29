# frozen_string_literal: true

require 'iso_country_codes'
require 'administrate/field/string'

module Administrate
  module Field
    class CountryEmoji < Administrate::Field::String
      def to_emoji
        iso2_to_flag_emoji(data)
      end

      def to_s
        data
      end

      private

      def iso2_to_flag_emoji(iso2)
        return if iso2.nil?

        iso2  = iso2.upcase
        emoji = iso2.chars.map { |char| (char.ord + 127_397).chr(Encoding::UTF_8) }.join
        entry = ::IsoCountryCodes.find(iso2)

        "#{emoji} (#{entry.name})"
      end
    end
  end
end
