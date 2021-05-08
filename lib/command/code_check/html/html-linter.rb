#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for HTML-Linter check
  class HTMLLinter < AbstractCommand
    def template
      'docker run ' \
        '--rm ' \
        '--volume %<pwd>s:/code ' \
        '%<image_name>s ' \
        'html_lint.py ' \
        '%<source_files>s'
    end
  end
end
