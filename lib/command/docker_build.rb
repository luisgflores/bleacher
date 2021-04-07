#!/usr/bin/env ruby
# frozen_string_literal: true

require 'abstract_command'

module DockerCommand
  # Template for 'docker build' command
  class DockerBuild < AbstractCommand
    def template
      'docker build ' +
        # '--no-cache ' +
        '--quiet ' \
        '--tag bleach/' + '%<tag>s ' \
        '%<dockerfile_dir>s >/dev/null'
    end
  end
end
