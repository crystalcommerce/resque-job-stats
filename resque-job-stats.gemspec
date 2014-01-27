# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "resque-job-stats"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["alanpeabody"]
  s.date = "2012-06-22"
  s.description = "Tracks jobs performed, failed, and the duration of the last 100 jobs for each job type."
  s.email = "gapeabody@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    ".travis.yml",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/resque-job-stats.rb",
    "lib/resque-job-stats/server.rb",
    "lib/resque-job-stats/server/views/job_stats.erb",
    "lib/resque/plugins/job_stats.rb",
    "lib/resque/plugins/job_stats/duration.rb",
    "lib/resque/plugins/job_stats/enqueued.rb",
    "lib/resque/plugins/job_stats/failed.rb",
    "lib/resque/plugins/job_stats/performed.rb",
    "lib/resque/plugins/job_stats/statistic.rb",
    "lib/resque/plugins/job_stats/timeseries.rb",
    "resque-job-stats.gemspec",
    "test/helper.rb",
    "test/test_job_stats.rb",
    "test/test_server.rb"
  ]
  s.homepage = "http://github.com/alanpeabody/resque-job-stats"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Job-centric stats for Resque"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<resque>, ["~> 1.17"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<mynyml-redgreen>, ["~> 0.7.1"])
      s.add_development_dependency(%q<timecop>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
    else
      s.add_dependency(%q<resque>, ["~> 1.17"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<mynyml-redgreen>, ["~> 0.7.1"])
      s.add_dependency(%q<timecop>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
    end
  else
    s.add_dependency(%q<resque>, ["~> 1.17"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<mynyml-redgreen>, ["~> 0.7.1"])
    s.add_dependency(%q<timecop>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
  end
end

