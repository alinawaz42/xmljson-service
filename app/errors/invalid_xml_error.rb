class InvalidXmlError < ApplicationError
  def initialize
    super(['Invalid XML! Unable to parse'])
  end
end
