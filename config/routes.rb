FakeCxmlPoEndpoint::Application.routes.draw do
  
  resources :pos do
    collection do
      post :accept 
      post :basic_auth
    end
  end

end
