Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get "/users",to: redirect('users/sign_up')
  resources :stories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
