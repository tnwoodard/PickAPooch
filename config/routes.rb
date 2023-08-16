Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'pooches/index'
      post 'pooches/create'
      get '/show/:id', to: 'pooches#show'
      delete '/destroy/:id', to: 'pooches#destroy'

    end
  end
  root 'home#index'
  get '/*path' => 'home#index'

end
