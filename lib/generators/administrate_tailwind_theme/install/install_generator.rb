# frozen_string_literal: true

module AdministrateTailwindTheme
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def install_flowbite
      return unless flowbite?

      validate_npm
      install_flowbite_package
    end

    def create_initializer
      initializer 'administrate_tailwind_theme.rb', <<~FILE
        # frozen_string_literal: true

        require 'administrate'
        Administrate::Engine.stylesheets.clear # required to remove Administrate base styles

        AdministrateTailwindTheme::Configuration.configure do |config|
          config.flowbite = #{flowbite?}
        end
      FILE
    end

    def create_or_update_administrate_layout
      tailwind_config_path = 'config/tailwind.config.js'

      insert_tailwind_config(tailwind_config_path)
      insert_flowbite_config(tailwind_config_path) if flowbite?
    end

    private

    def insert_tailwind_config(file_path)
      js_import     = "\nconst execSync = require('child_process').execSync;"
      child_process = "\nconst output = execSync('bundle show administrate_tailwind_theme', { encoding: 'utf-8' });"
      config        = "\n    output.trim() + '/app/views/**/*.{erb,haml,html,rb}',"

      insert_into_file file_path, js_import,
                       after: "const defaultTheme = require('tailwindcss/defaultTheme')"
      insert_into_file file_path, child_process,
                       after: "const execSync = require('child_process').execSync;"
      insert_into_file file_path, config,
                       after: 'content: ['
    end

    def flowbite?
      flowbite = true
      flowbite = false if ENV['FLOWBITE']&.downcase == 'false'

      flowbite
    end

    def install_flowbite_package
      `npm install flowbite`
    end

    def insert_flowbite_config(file_path)
      flowbite      = "\n    './node_modules/flowbite/**/*.js',"
      flowbite_plug = "\n    require('flowbite/plugin'),"

      insert_into_file file_path, flowbite,
                       after: "{erb,haml,html,rb}',"
      insert_into_file file_path, flowbite_plug,
                       after: "require('@tailwindcss/container-queries'),"
    end

    def validate_npm
      require 'mkmf'
      return if find_executable 'npm'

      raise ArgumentError,
            'npm command was not found! Install npm or use "FLOWBITE=false rails g administrate_tailwind_theme:install"'
    end
  end
end
