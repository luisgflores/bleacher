#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for ESLint check
  class ESLint < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'eslint ' \
        '--config /code/%<config_file>s ' \
        '--color ' \
        '%<source_files>s'
    end
  end
end
