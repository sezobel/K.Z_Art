Rails.application.routes.draw do
  devise_for :users
  
  resources :listings

  get 'pages/about'

  get 'pages/contact'

  get 'pages/resume_portfolio'

  get 'users/edit'

  root 'listings#index'

end
