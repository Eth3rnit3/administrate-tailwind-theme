# frozen_string_literal: true

require 'test_helper'

module AdministrateTailwindTheme
  module Field
    class TestBooleanEmojiTest < ActiveSupport::TestCase
      def test_boolean_emoji_for_true
        field = AdministrateTailwindTheme::Field::BooleanEmoji.new(:your_boolean_field, true, :show)
        assert_equal '✅', field.to_emoji
      end

      def test_boolean_emoji_for_false
        field = AdministrateTailwindTheme::Field::BooleanEmoji.new(:your_boolean_field, false, :show)
        assert_equal '❌', field.to_emoji
      end
    end
  end
end
