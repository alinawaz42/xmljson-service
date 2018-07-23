module Service
  extend ActiveSupport::Concern

  included do
    def self.call(*args)
      new(*args).call
    end

    def logger
      @logger ||= Rails.logger
    end
  end
end
