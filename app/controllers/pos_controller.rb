class PosController < ApplicationController
  http_basic_authenticate_with name: "user", password: "secret", except: :accept
  def accept
    render text: Po.simple_response
  end
  
  def basic_auth
    render text: Po.simple_response
  end
  
  def index
    render text: "Try accept or basic_auth paths."
  end
  
  def show
    render text: "Try accept or basic_auth paths."
  end
end
