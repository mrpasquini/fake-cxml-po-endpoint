class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
    render 'layouts/application.html.erb'
  end
end
