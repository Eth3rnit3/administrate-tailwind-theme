# frozen_string_literal: true

module AdministrateTailwindTheme
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def create_initializer
      initializer 'administrate_tailwind_theme.rb', <<~FILE
        require 'administrate'
        Administrate::Engine.stylesheets.clear # required to remove Administrate base styles
      FILE
    end

    def create_or_update_administrate_layout
      tailwind_config_path = 'config/tailwind.config.js'

      insert_tailwind_config(tailwind_config_path)
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
  end
end
