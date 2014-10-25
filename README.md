# Overview

[![Gittip](http://img.shields.io/gittip/bkuhlmann.svg)](https://www.gittip.com/bkuhlmann)

Shell scripts for the installation and setup of Ruby (namely commonly used Ruby Gems).

Sometimes, when setting up a new machine or installing a new Ruby VM, there is a need for automating the install of
commonly used gems (i.e. setting up your toolbox). This solves that problem by providing a master list of gems which can
be installed via a single command.

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
        - [Redis Namespace](https://github.com/resque/redis-namespace)
        - [DB](https://github.com/bkuhlmann/db)
    - Servers
        - [Unicorn](http://unicorn.bogomips.org)
    - Application
        - [Rake](http://rake.rubyforge.org)
        - [Ruby on Rails](http://rubyonrails.org)
        - [RMagick](https://github.com/rmagick/rmagick)
    - Performance
        - [Fast Blank](https://github.com/SamSaffron/fast_blank)
        - [Deep Tree](https://github.com/PatrickTulskie/deep_tree)
        - [Oj](https://github.com/ohler55/oj)
    - Security
        - [Bcrypt](https://github.com/codahale/bcrypt-ruby)
        - [Brakeman](https://github.com/presidentbeef/brakeman)
        - [Codesake Dawn](https://github.com/codesake/codesake-dawn)
    - Development
        - [Dotenv Rails](https://github.com/bkeepers/dotenv)
        - [Pry](https://github.com/pry/pry)
        - [Pry ByeBug](https://github.com/deivid-rodriguez/pry-byebug)
        - [Pry Remote](https://github.com/Mon-Ouie/pry-remote)
        - [Pry Rescue](https://github.com/ConradIrwin/pry-rescue)
        - [Pry Stack Explorer](https://github.com/pry/pry-stack_explorer)
        - [Bond](https://github.com/cldwalker/bond)
        - [Wirb](https://github.com/janlelis/wirb)
        - [Hirb](https://github.com/cldwalker/hirb)
        - [Awesome Print](https://github.com/michaeldv/awesome_print)
        - [Priscilla](https://github.com/Arkham/priscilla)
        - [Rails ERD](http://rails-erd.rubyforge.org)
        - [Railroady](https://github.com/preston/railroady)
        - [Spring](https://github.com/rails/spring)
        - [Spring Commands RSpec](https://github.com/jonleighton/spring-commands-rspec)
    - Testing
        - [Database Cleaner](https://github.com/bmabey/database_cleaner)
        - [Factory Girl Rails](https://github.com/thoughtbot/factory_girl_rails)
        - [RSpec Rails](https://github.com/dchelimsky/rspec-rails)
        - [RSpec HTML Matchers](https://github.com/kucaahbe/rspec-html-matchers)
        - [Ammeter](https://github.com/alexrothenberg/ammeter)
        - [TimeCop](https://github.com/travisjeffery/timecop)
        - [VCR](https://github.com/vcr/vcr)
        - [Launchy](https://github.com/copiousfreetime/launchy)
        - [Capybara](https://github.com/jnicklas/capybara)
        - [Capybara Extensions](https://github.com/dockyard/capybara-extensions)
        - [Jasmine](http://jasmine.github.io)
        - [Poltergeist](https://github.com/teampoltergeist/poltergeist)
        - [Aruba](https://github.com/cucumber/aruba)
        - [MemFs](https://github.com/simonc/memfs)
    - Metrics
        - [LoL DBA](https://github.com/plentz/lol_dba)
        - [Tracer Bullets](https://github.com/n8/tracer_bullets)
        - [Browser Details](https://github.com/gshutler/browser_details)
        - [Request Log Analyzer](https://github.com/wvanbergen/request-log-analyzer)
        - [FnordMetric](https://github.com/paulasmuth/fnordmetric)
        - [Site Validator](https://github.com/jaimeiniesta/site_validator)
        - [gctools](https://github.com/tmm1/gctools)
        - [Memory Profiler](https://github.com/SamSaffron/memory_profiler)
    - Continuous Integration (CI)
        - [Travis](https://github.com/travis-ci/travis)
        - [Travis Lint](https://github.com/travis-ci/travis-lint)
    - Code Quality
        - [SimpleCov](https://github.com/colszowka/simplecov)
        - [CSS CSS](https://github.com/zmoazeni/csscss)
        - [Cane](https://github.com/square/cane)
        - [Rails Best Practices](https://github.com/railsbp/rails_best_practices)
    - Deployment
        - [Capistrano](https://github.com/capistrano/capistrano)
        - [Heroku+](https://github.com/bkuhlmann/heroku_plus)
    - Documentation
        - [Inch](https://github.com/rrrene/inch)
    - Utilities
        - [Sublime Text Kit](https://github.com/bkuhlmann/sublime_text_kit)
        - [Pennyworth](https://github.com/bkuhlmann/pennyworth)
        - [Flacsmith](https://github.com/bkuhlmann/flacsmith)
        - [Showterm](https://github.com/Conradirwin/showterm)
        - [Powder](https://github.com/Rodreegez/powder)
        - [Rubocop](https://github.com/bbatsov/rubocop)
        - [Foreman](https://github.com/ddollar/foreman)
        - [t](https://github.com/sferik/t)

# Requirements

- [OSX](http://www.apple.com/osx)

# Setup

Open a terminal window and execute one of the following depending on your version preference:

Current Version (stable):

    git clone git://github.com/bkuhlmann/ruby_setup.git
    cd ruby_setup
    git checkout v1.0.0

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
    i: Install everything (i.e. certificates, Bundler, and gems).
    q: Quit/Exit.

Choose option 'i' to install.

The options prompt can be skipped by passing the desired option directly to the run.sh script.
For example, executing "./run.sh i" will execute the install.

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io)

# License

Copyright (c) 2014 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
