require 'cucumber/rake/task'
require 'rubocop/rake_task'

require 'yard'

namespace :cuke do
  Cucumber::Rake::Task.new(:all) do |t|
    t.cucumber_opts = '--format pretty'
  end

  Cucumber::Rake::Task.new(:wip) do |t|
    t.cucumber_opts = '--format pretty -t @wip'
  end
end

RuboCop::RakeTask.new

namespace :docs do
  YARD::Rake::YardocTask.new :generate do |t|
    t.files = ['lib/**/*.rb', '-', 'README.md']
  end
end

task default: ['rubocop', 'cuke:all']