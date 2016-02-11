
require 'rubygems'
require 'bundler/setup'
require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec_q1) do |spec_task|
  spec_task.pattern = "spec/q1/*_spec.rb"
end

RSpec::Core::RakeTask.new(:spec_q2) do |spec_task|
  spec_task.pattern = "spec/q2/*_spec.rb"
  spec_task.rspec_opts = "--tag ~wip"
end

RSpec::Core::RakeTask.new(:spec_q2_wip) do |spec_task|
  spec_task.pattern = "spec/q2/*_spec.rb"
  spec_task.rspec_opts = "--tag wip"
end

Rake::TestTask.new(:test) do |test_task|
  test_task.libs << "tests"
  test_task.libs << "lib"
  test_task.pattern = 'test/**/test_*.rb'
  test_task.warning = true
end

