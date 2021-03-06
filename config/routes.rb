Rails.application.routes.draw do
  resources :posts
  root to: 'pages#index'

  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  get '/home', to: 'home#index', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
