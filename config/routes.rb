Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  default_url_options :host => "localhost:3000"
  mount ActionCable.server => '/cable'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :opinions
      resources :ratings
      resources :user_categories
      resources :opinion_categories
      resources :categories
      resources :conversations
      resources :messages
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
