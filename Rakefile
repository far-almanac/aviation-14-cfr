require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Download 14 CFR data from gpo"
task :download_data do
  sh "bin/download-data"
end
