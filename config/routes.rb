Rails.application.routes.draw do
  resources :users

  resources :welcome
  root to: 'welcome#index'
  # match 'auth/:provider/callback', to: 'sessions#create'
end
