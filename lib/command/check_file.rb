#!/usr/bin/env ruby
# frozen_string_literal: true

module Command
  # Template for check-file command
  class CheckFile < AbstractCommand
    def template
      '%<tool_directory>s/check-file ' \
      '--file %<tmpdir>s/%<file_copy>s'
    end
  end
end
