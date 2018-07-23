class ApplicationError < StandardError
  attr_reader :status, :code, :errors

  def initialize(errors = nil, code = nil, status = nil)
    @code = code || 422
    @status = status || :unprocessable_entity
    @errors = errors
  end

  def as_json
    { errors: errors, status: status, code: code }
  end
end
