# frozen_string_literal: true

require 'administrate_tailwind_theme/view_generator'

module AdministrateTailwindTheme
  module Generators
    module Views
      class KaminariGenerator < AdministrateTailwindTheme::ViewGenerator
        def self.template_source_path
          File.expand_path(
            '../../../../app/views/kaminari',
            __dir__
          )
        end

        source_root template_source_path

        def copy_template
          copy_resource_template('_first_page')
          copy_resource_template('_gap')
          copy_resource_template('_last_page')
          copy_resource_template('_next_page')
          copy_resource_template('_page')
          copy_resource_template('_paginator')
          copy_resource_template('_prev_page')
        end
      end
    end
  end
end
