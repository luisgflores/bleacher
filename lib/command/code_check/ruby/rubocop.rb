#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for Rubocop check
  class Rubocop < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'rubocop ' \
        '--display-style-guide ' \
        '--extra-details ' \
        '--color ' \
        '--config /code/%<config_file>s ' \
        '%<source_files>s'
    end
  end
end
