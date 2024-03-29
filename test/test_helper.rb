# frozen_string_literal: true

require File.expand_path('dummy/config/environment.rb', __dir__)

ActiveRecord::Migrator.migrations_paths = [File.expand_path('dummy/db/migrate', __dir__)]

require 'rails/test_help'

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_paths=)
  ActiveSupport::TestCase.fixture_paths = [File.expand_path('fixtures', __dir__)]
  ActionDispatch::IntegrationTest.fixture_paths = ActiveSupport::TestCase.fixture_paths
  ActiveSupport::TestCase.file_fixture_path = "#{File.expand_path("fixtures", __dir__)}/files"
  ActiveSupport::TestCase.fixtures :all
end
