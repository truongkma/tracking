# frozen_string_literal: true

class Utility
  class << self
    def log_exception e, args
      Rails.logger.warn args[:info] if args[:info]
      Rails.logger.warn e.message
      Rails.logger.warn e.backtrace.join "\n"
    end
  end
end
