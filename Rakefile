
require 'rubygems'
require 'bundler/setup'
require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

Rake::TestTask.new(:test) do |t|
  t.libs << "tests"
  t.libs << "lib"
  t.pattern = 'test/**/test_*.rb'
  t.warning = true
end

