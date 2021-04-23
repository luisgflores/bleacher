#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for Stylelint check
  class Stylelint < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'stylelint ' \
        '--config /code/%<config_file>s ' \
        '--color ' \
        '%<source_files>s'
    end
  end
end
