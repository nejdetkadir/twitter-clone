Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  authenticate :user do
    get '/feed', to: 'pages#feed'
  
    # profiles
    get 'profiles/me', to: 'profiles#index'
    get 'profiles/:id', to: 'profiles#show'
    post 'profiles/:id', to: 'profiles#send_follow_request'
    patch 'profiles/me', to: "profiles#update", as: "profile_update"
    # resources
    resources :tweets, except: [:new, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
