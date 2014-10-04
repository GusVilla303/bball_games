Rails.application.routes.draw do
  resources :users

  resources :welcome
  root to: 'welcome#index'
  get 'auth/:provider/callback', to: 'sessions#create'
end
