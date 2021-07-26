Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes do
    resources :prototypes, only: :create
    collection do
      get 'search'
    end
  end

  #get '/patients/:id', to: 'prototypes#index'
  #current_user/:id
end
