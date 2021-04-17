#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for ESLint check
  class Bandit < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'bandit ' \
        '--quiet ' \
        '--format screen ' \
        '--configfile /code/%<config_file>s ' \
        '%<source_files>s'
    end
  end
end
