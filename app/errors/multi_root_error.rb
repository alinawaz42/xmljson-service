class MultiRootError < ApplicationError
  def initialize
    super(['XML cannot have multiple root objects!'])
  end
end
