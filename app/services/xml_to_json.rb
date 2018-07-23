class XmlToJson
  include Service

  attr_reader :xml

  def initialize(xml_str)
    @xml = xml_str
  end

  def call
    Hash.from_xml(xml)
  rescue REXML::ParseException
    raise InvalidXmlError.new
  end
end
