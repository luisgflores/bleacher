#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for CSS Lint check
  class CSSLint < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'csslint ' \
        '--format=compact ' \
        '--quiet ' \
        '%<source_files>s'
    end
  end
end
