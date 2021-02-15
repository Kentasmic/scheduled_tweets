Rails.application.routes.draw do
  
  root to: "main#index"
  
  get "sign_up",  to: "registrations#new"
  #this expects a user_path by default so the sign_up_path url is set on the form
  post "sign_up", to: "registrations#create"
  
  get "sign_in",  to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  get "password",   to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get "password/reset",  to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit",   to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"
  
  
  delete "logout", to: "sessions#destroy"
  
  get "about-us", to: "about#index", as: :about
  
  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"
  
  resources :twitter_accounts
  resources :tweets
  
end
