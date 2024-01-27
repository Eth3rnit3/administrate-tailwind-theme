# frozen_string_literal: true

require 'test_helper'

class Administrate::Field::TestCountryEmojiTest < ActiveSupport::TestCase
  def test_country_emoji_for_fr
    field = Administrate::Field::CountryEmoji.new(:your_boolean_field, 'fr', :show)
    assert_equal '🇫🇷 (France)', field.to_emoji
  end

  def test_country_emoji_for_de
    field = Administrate::Field::CountryEmoji.new(:your_boolean_field, 'de', :show)
    assert_equal '🇩🇪 (Germany)', field.to_emoji
  end

  def test_country_emoji_for_gb
    field = Administrate::Field::CountryEmoji.new(:your_boolean_field, 'gb', :show)
    assert_equal '🇬🇧 (United Kingdom of Great Britain and Northern Ireland)', field.to_emoji
  end

  def test_country_emoji_for_us
    field = Administrate::Field::CountryEmoji.new(:your_boolean_field, 'us', :show)
    assert_equal '🇺🇸 (United States of America)', field.to_emoji
  end

  def test_country_emoji_for_lu
    field = Administrate::Field::CountryEmoji.new(:your_boolean_field, 'lu', :show)
    assert_equal '🇱🇺 (Luxembourg)', field.to_emoji
  end

  def test_country_emoji_for_it
    field = Administrate::Field::CountryEmoji.new(:your_boolean_field, 'it', :show)
    assert_equal '🇮🇹 (Italy)', field.to_emoji
  end
end
