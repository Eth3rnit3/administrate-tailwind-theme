require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]

  Capybara.configure do |config|
    config.server = :puma, { Silent: true }
  end
end
