require 'bundler/gem_tasks'
require 'rake/testtask'

test_files = FileList['test/**/*_test.rb']

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = test_files
  t.warning = false
end

task default: :test
