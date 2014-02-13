require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.libs << "spec"
  t.test_files = Dir.glob("spec/**/*_spec.rb")
end

task :default => :test
