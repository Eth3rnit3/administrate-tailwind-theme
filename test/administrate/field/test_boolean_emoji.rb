# frozen_string_literal: true

require "test_helper"

module Administrate
  module Field
    class TestBooleanEmoji < ActiveSupport::TestCase
      def test_boolean_emoji_for_true
        field = Administrate::Field::BooleanEmoji.new(:your_boolean_field, true, :show)
        assert_equal "✅", field.to_emoji
      end

      def test_boolean_emoji_for_false
        field = Administrate::Field::BooleanEmoji.new(:your_boolean_field, false, :show)
        assert_equal "❌", field.to_emoji
      end
    end
  end
end
