# Bleach

Bleach is a Ruby tool that uses Docker containers to run static code analysis tools (such as linters) against a source code file. Bleach can also install a Git pre-commit hook so it runs automagically for modified files before they are committed.
* [Installation](#installation)
* [Usage](#usage)
* [Supported languages and tools](#tools)
* [Demo](#demo)


## Installation

- Install [Docker](https://www.docker.com/products/docker-desktop).
- Install the bleach gem.

```bash
gem install bleach
```

## Usage

Usage:

    bleach [OPTIONS]

Options:

    -f, --file [STRING]              Filepath of the file that needs to be checked.
    -i, --install                    Install Git pre-commit hooks.

## Tools

- Ruby
  -
  - [Brakeman](https://brakemanscanner.org/)
  - [Rubocop](https://rubocop.org/)
- JavaScript
  -
  - [ESLint](https://eslint.org/)

## Demo

[![asciicast](https://asciinema.org/a/406305.svg)](https://asciinema.org/a/406305)
