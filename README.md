## Overview

Answers for set questions for a given programming test.  Also good practice for Ruby, RSpec, etc.

The sections below describe getting started, code layout, and then the questions in detail.

## Getting Started

### Ruby 

I'm using Ruby 2.0.0 on MacOS.  This comes with version 2.0.14 of gem.


### Bundler

Run the following command as a normal user (without admin rights) to install the bundler gem/command

```
gem install bundler --user-install
```

This will install under $HOME/.gem and you'll need to add $HOME/.gem/ruby/2.0.0/bin to your PATH variable to pick up any installed executables, namely the bundle command.

Next using bundler to install gems that are specified in Gemfile using the following command

```
bundle install --path .bundle
```




## Layout

### lib

All implementation code is held under here with sub directories for each question.


### spec

The [RSpec](http://rspec.info/) tests are stored under this location, again with a subdirectory for each question


### test

Any Unit test code is handled here.  Yes, I know that RSpec pretty much covers everything, but you never know, there may be something that doesn't really fit in BDD that needs to be checked also :)


## Usage

### Common Targets

The Rake build tool is used to execute tests.  Since we've used bundler it makes life easier to use the "bundle exec" to sort out the load paths.

The following command runs the unit tests

```
bundle exec rake test
```

The following command runs the rspec tests for question one

```
bundle exec rake spec_q1
```



  
