require 'resque'
require 'resque/plugins/job_stats/performed'
require 'resque/plugins/job_stats/enqueued'
require 'resque/plugins/job_stats/failed'
require 'resque/plugins/job_stats/duration'
require 'resque/plugins/job_stats/timeseries'
require 'resque/plugins/job_stats/statistic'

module Resque
  module Plugins
    module JobStats
      include Resque::Plugins::JobStats::Performed
      include Resque::Plugins::JobStats::Enqueued
      include Resque::Plugins::JobStats::Failed
      include Resque::Plugins::JobStats::Duration
      include Resque::Plugins::JobStats::Timeseries::Enqueued
      include Resque::Plugins::JobStats::Timeseries::Performed

      def self.add_measured_job(name)
        Resque.redis.sadd("stats:jobs", name)
      end

      def self.rem_measured_job(name)
        Resque.redis.srem("stats:jobs", name)
      end

      def self.measured_jobs
        Resque.redis.smembers("stats:jobs").map { |klass_name|
          begin
            klass_name.constantize
          rescue NameError
            puts "Unable to load constant for #{klass_name}, you may need to load your Rails env."
          end
        }.compact
      end
    end
  end
end
