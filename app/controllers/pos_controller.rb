class PosController < ApplicationController
  http_basic_authenticate_with name: "user", password: "secret", except: [:accept, :index]
  def accept
    render text: Po.simple_response
  end
  
  def basic_auth
    render text: Po.simple_response
  end
  
  def index
    render :template => "layouts/application.html.erb"
  end
end
