require 'sinatra'
require 'sinatra/multi_route'
require 'sinatra/basic_auth'

HTTP_BASIC_AUTH_NAME = ENV['HTTP_BASIC_AUTH_NAME'] || 'user'
HTTP_BASIC_AUTH_PASS = ENV['HTTP_BASIC_AUTH_PASS'] || 'secret'


authorize do |username, password|
  username == HTTP_BASIC_AUTH_NAME && password == HTTP_BASIC_AUTH_PASS
end

get "/" do
  "Try /cxml/accept or /cxml/basic_auth paths."
end

protect do
  route :get, :post, :put, "/cxml/basic_auth" do
    accept_response
  end
end

route :get, :post, :put, "/cxml*" do |accept|
  accept_response
end

  def accept_response(status_text = "PO = Test PO", status_code = "200")
    timestamp = Time.now.iso8601
%Q|
<cXML version="1.1" payloadID="#{timestamp}@testing" timestamp="#{timestamp}">
  <Response>
    <Status code="#{status_code}" text="#{status_text}" />
  </Response>
</cXML>
|.strip
  end