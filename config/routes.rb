Rails.application.routes.draw do
 
  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :user_logins
  devise_for :users
    resources :listings

  resources :orders  do 
    resources :listings    
  end 


  

  resources :orders

  get 'pages/about'

  get 'pages/contact'

  get 'pages/resume_portfolio'

  get 'pages/welcome_to'

  get 'users/edit'

  get 'seller' => "listings#seller"

  root 'listings#index'


end

