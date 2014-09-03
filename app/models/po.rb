class Po < ActiveRecord::Base
  def self.simple_response(status_text = "PO = Test PO", status_code = "200")
    timestamp = Time.now.iso8601
%Q|
<cXML version="1.1" payloadID="#{timestamp}@testing" timestamp="#{timestamp}">
  <Response>
    <Status code="#{status_code}" text="#{status_text}" />
  </Response>
</cXML>
|.strip
  end
end