# Bleacher

Bleacher is a Ruby tool that uses Docker containers to run static code analysis tools (such as linters) against a source code file. Bleacher can also install a Git pre-commit hook so it runs automagically for modified files before they are committed.
* [Installation](#installation)
* [Usage](#usage)
* [Supported languages and tools](#tools)
* [Sample configuration files](https://github.com/luisgflores/bleacher/tree/main/sample_configuration_files)


## Installation

- Install [Docker](https://www.docker.com/products/docker-desktop). (Also take a look at [How can I use Docker without sudo](https://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo) if you're using Linux.)
- Install the bleacher gem from this repository.

```bash
gem install bleacher-0.0.x.gem
```

## Usage

Usage:

    bleacher [OPTIONS]

Options:

    -f, --file [STRING]              Filepath of the file that needs to be checked.
    -i, --install                    Install Git pre-commit hooks.

## Tools

- JavaScript
  -
  - [ESLint](https://eslint.org/)
  - [JSHint](https://jshint.com/)
- Python
  -
  - [Bandit](https://github.com/PyCQA/bandit)
  - [Pylint](https://www.pylint.org/)
- Ruby
  -
  - [Brakeman](https://brakemanscanner.org/)
  - [Rubocop](https://rubocop.org/)
