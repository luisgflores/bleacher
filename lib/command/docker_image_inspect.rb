#!/usr/bin/env ruby
# frozen_string_literal: true

require 'abstract_command'

module DockerCommand
  # Template for 'docker image inspect' command
  class DockerImageInspect < AbstractCommand
    def template
      'docker image inspect ' \
        '%<tag>s >/dev/null 2>&1'
      # We don't care about output, we just want to know if image exists
    end
  end
end
