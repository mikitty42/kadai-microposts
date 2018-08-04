Rails.application.routes.draw do
  

  get 'microposts/create'

  get 'microposts/destroy'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to:'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'

  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
  resources :micropost, only: [:create,:destroy]


end
