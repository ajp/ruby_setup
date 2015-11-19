# Ruby Setup

[![Patreon](https://img.shields.io/badge/patreon-donate-brightgreen.svg)](https://www.patreon.com/bkuhlmann)

Shell scripts for the installation and setup of Ruby (namely commonly used Ruby Gems).

Sometimes, when setting up a new machine or installing a new Ruby VM, there is a need for automating the install of
commonly used gems (i.e. setting up your toolbox). This solves that problem by providing a master list of gems which can
be installed via a single command.

<!-- Tocer[start]: Auto-generated, don't remove. -->

# Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Usage](#usage)
- [Versioning](#versioning)
- [Code of Conduct](#code-of-conduct)
- [Contributions](#contributions)
- [License](#license)
- [History](#history)
- [Credits](#credits)

<!-- Tocer[finish]: Auto-generated, don't remove. -->

# Features

- Installs gem certificates (needed by gems with medium or high security settings).
- Installs the following gems (only if not already installed):
    - Gems
        - [Gem Ctags](https://github.com/tpope/gem-ctags)
        - [Gem Whois](https://github.com/jnunemaker/gemwhois)
        - [Gemsmith](https://github.com/bkuhlmann/gemsmith)
    - Git
        - [Gitfinger](https://github.com/danchoi/gitfinger)
        - [Octokit](https://github.com/pengwynn/octokit)
    - Command Line Interface (CLI)
        - [Progress Bar](https://github.com/jfelchner/ruby-progressbar)
    - Databases
        - [SQLite3](http://www.sqlite.org)
        - [PG](http://www.postgresql.org)
        - [Redis](https://github.com/antirez/redis)
        - [DB](https://github.com/bkuhlmann/db)
    - Servers
        - [Puma](http://puma.io)
    - Application
        - [Rake](http://rake.rubyforge.org)
        - [Ruby on Rails](http://rubyonrails.org)
        - [RMagick](https://github.com/rmagick/rmagick)
    - Security
        - [Bcrypt](https://github.com/codahale/bcrypt-ruby)
    - Development
        - [Pry](https://github.com/pry/pry)
        - [Pry ByeBug](https://github.com/deivid-rodriguez/pry-byebug)
        - [Pry Remote](https://github.com/Mon-Ouie/pry-remote)
        - [Pry Rescue](https://github.com/ConradIrwin/pry-rescue)
        - [Pry Stack Explorer](https://github.com/pry/pry-stack_explorer)
        - [Pry State](https://github.com/SudhagarS/pry-state)
        - [Bond](https://github.com/cldwalker/bond)
        - [Wirb](https://github.com/janlelis/wirb)
        - [Hirb](https://github.com/cldwalker/hirb)
        - [Awesome Print](https://github.com/michaeldv/awesome_print)
        - [Priscilla](https://github.com/Arkham/priscilla)
        - [Rails ERD](http://rails-erd.rubyforge.org)
        - [Railroady](https://github.com/preston/railroady)
    - Testing
        - [RSpec Rails](https://github.com/dchelimsky/rspec-rails)
    - Metrics
        - [Benchmark IPS](https://github.com/evanphx/benchmark-ips)
        - [LoL DBA](https://github.com/plentz/lol_dba)
        - [Request Log Analyzer](https://github.com/wvanbergen/request-log-analyzer)
        - [FnordMetric](https://github.com/paulasmuth/fnordmetric)
        - [Site Validator](https://github.com/jaimeiniesta/site_validator)
        - [gctools](https://github.com/tmm1/gctools)
        - [Memory Profiler](https://github.com/SamSaffron/memory_profiler)
        - [ruby-prof](https://github.com/ruby-prof/ruby-prof)
    - Continuous Integration (CI)
        - [Travis](https://github.com/travis-ci/travis)
        - [Travis Lint](https://github.com/travis-ci/travis-lint)
    - Code Quality
        - [CSS CSS](https://github.com/zmoazeni/csscss)
        - [Cane](https://github.com/square/cane)
        - [Rubocop](https://github.com/bbatsov/rubocop)
        - [Rails Best Practices](https://github.com/railsbp/rails_best_practices)
    - Deployment
        - [Capistrano](https://github.com/capistrano/capistrano)
        - [Heroku+](https://github.com/bkuhlmann/heroku_plus)
    - Documentation
        - [Inch](https://github.com/rrrene/inch)
        - [gem-man](https://github.com/defunkt/gem-man)
    - Utilities
        - [Sublime Text Kit](https://github.com/bkuhlmann/sublime_text_kit)
        - [Pennyworth](https://github.com/bkuhlmann/pennyworth)
        - [Flacsmith](https://github.com/bkuhlmann/flacsmith)
        - [Powder](https://github.com/Rodreegez/powder)
        - [Foreman](https://github.com/ddollar/foreman)
        - [t](https://github.com/sferik/t)

# Requirements

- [OSX](http://www.apple.com/osx)

# Setup

Open a terminal window and execute one of the following depending on your version preference:

Current Version (stable):

    git clone git://github.com/bkuhlmann/ruby_setup.git
    cd ruby_setup
    git checkout v3.0.0

Master Version (unstable):

    git clone git://github.com/bkuhlmann/ruby_setup.git
    cd ruby_setup

# Usage

Edit the certificate or gem settings as you see fit (blank lines and lines that begin with '#' will be ignored):

- settings/certs.txt = Defines gem certificate URLs to install.
- settings/gems.txt = Defines gems to install.

Once all settings are configured, open a terminal window to execute the following command:

    ./run.sh

Running the script will present the following options:

    c: Install certificates.
    b: Install and configure Bundler.
    g: Install gems.
    t: Apply ctags.
    i: Install everything (i.e. executes all options, listed above, top to bottom).
    q: Quit/Exit.

Choose option 'i' to install.

The options prompt can be skipped by passing the desired option directly to the run.sh script.
For example, executing "./run.sh i" will execute the install.

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2014 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
Built with [Bashsmith](https://github.com/bkuhlmann/bashsmith).

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io).
