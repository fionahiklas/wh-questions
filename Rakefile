
require 'rubygems'
require 'bundler/setup'
require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec_q1) do |spec_task|
  spec_task.pattern = "spec/q1/*_spec.rb"
end

Rake::TestTask.new(:test) do |test_task|
  test_task.libs << "tests"
  test_task.libs << "lib"
  test_task.pattern = 'test/**/test_*.rb'
  test_task.warning = true
end

