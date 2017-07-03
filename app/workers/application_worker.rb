# frozen_string_literal: true

# Application worker from which all workers should inherit
# You can rename it if it would conflict with your current code base (in case you're integrating
# Karafka with other frameworks). Karafka will use first direct descendant of Karafka::BaseWorker
# to build worker classes
class ApplicationWorker < Karafka::BaseWorker
  # You can disable WorkerGlass components if you want to
  prepend WorkerGlass::Timeout
  prepend WorkerGlass::Reentrancy

  self.timeout = 60
end
