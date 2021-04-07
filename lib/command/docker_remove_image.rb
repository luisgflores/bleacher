#!/usr/bin/env ruby
# frozen_string_literal: true

require 'abstract_command'

module DockerCommand
  # Template for 'docker rmi' command
  class DockerRemoveImage < AbstractCommand
    def template
      'docker rmi ' \
        '--force ' \
        'bleach/' + '%<tag>s'
    end
  end
end
