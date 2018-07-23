class JsonToXml
  include Service

  attr_reader :json

  def initialize(json_string)
    @json = JSON.parse(json_string)
  end

  def call
    raise MultiRootError.new if root_keys.size > 1
    xml
  end

  private

  def xml
    @xml ||= json[root_key].to_xml(root: root_key)
  end

  def root_keys
    @root_keys ||= json.keys
  end

  def root_key
    @root_key ||= root_keys.first
  end
end
