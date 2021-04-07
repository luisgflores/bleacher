#!/usr/bin/env ruby
# frozen_string_literal: true

module CodeCheck
  # Template for Brakeman check
  class Brakeman < AbstractCommand
    def template
      'docker run ' \
      '--rm ' \
      '--volume %<pwd>s:/code ' \
      '%<image_name>s ' \
      '--config-file /code/%<config_file>s ' \
      '--force-scan ' \
      '--quiet ' \
      '--output report.json ' \
      '--only-files ' \
      '%<source_files>s'
    end
  end
end
