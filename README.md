# Bleacher

Bleacher is a Ruby 2.7 tool that uses Docker containers to run static code analysis tools (such as linters) against a source code file. Bleacher can also install a Git pre-commit hook so it runs automagically for modified files before they are committed.
* [Installation](#installation)
* [Usage](#usage)
* [Supported languages and tools](#tools)
* [Sample configuration files](https://github.com/luisgflores/bleacher/tree/main/sample_configuration_files)


## Installation

- Install [Docker](https://www.docker.com/products/docker-desktop). (Also take a look at [How can I use Docker without sudo](https://askubuntu.com/questions/477551/how-can-i-use-docker-without-sudo) if you're using Linux.)
- Install the bleacher gem from this repository:

```bash
gem install bleacher-0.0.x.gem
```
This will automatically install all prerrequisite gems, but some libraries might be needed for this.

- On MacOS you might need to:
```bash 
brew install cmake pkg-config icu4c
```
- On Linux:
```bash
sudo apt-get install make build-essential libicu-dev cmake libssl-dev
```
## Usage

Usage:

    bleacher [OPTION]

Options (mutually exclusive):

    -f, --file [STRING]              Filepath of the file that needs to be checked.
    -i, --install                    Install Git pre-commit hook.

## Tools
Source file language is autodetected at run time.

- CSS
  -
  - [CSS Lint](http://csslint.net/)
  - [Stylelint](https://stylelint.io/)
- HTML
  -
  - [HTML Linter](https://github.com/sk-/html-linter)
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
- SCSS
  -
  - [Stylelint-SCSS](https://github.com/kristerkari/stylelint-scss)
