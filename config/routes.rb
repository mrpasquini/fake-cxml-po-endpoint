FakeCxmlPoEndpoint::Application.routes.draw do
  get "/" => 'application#index'
  resources :pos do
    collection do
      post :accept 
      post :basic_auth
    end
  end

end
