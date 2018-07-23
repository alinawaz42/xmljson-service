module ErrorHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ApplicationError do |e|
      render json: e.as_json, status: e.status
    end
  end
end
