Rails.application.routes.draw do
  devise_for :users
  
  resources :listings

  get 'pages/about'

  get 'pages/contact'

  get 'pages/resume_portfolio'

  get 'users/edit'

  get 'seller' => "listings#seller"

  root 'listings#index'




end

