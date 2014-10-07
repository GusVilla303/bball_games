Rails.application.routes.draw do
  resources :users

  resources :welcome
  root to: 'welcome#index'
  get 'auth/twitter/callback', to: 'sessions#create', as: 'signin'
  #get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
