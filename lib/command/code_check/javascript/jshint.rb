#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for JSHint check
  class JSHint < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'jshint ' \
        '--config /code/%<config_file>s ' \
        '%<source_files>s'
    end
  end
end
