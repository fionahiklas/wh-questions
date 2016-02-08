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

This will install under $HOME/.gem



## Layout

### lib

All implementation code is held under here with sub directories for each question.


### spec

The [RSpec](http://rspec.info/) tests are stored under this location, again with a subdirectory for each question


### test

Any Unit test code is handled here.  Yes, I know that RSpec pretty much covers everything, but you never know, there may be something that doesn't really fit in BDD that needs to be checked also :)


## Usage

### Common Targets

The Rake build tool is used to execute tests.  The following targets are available

```
rake test
```

Run the entire suite of unit tests.

```
rake spec
```

Run the RSpec tests


  
