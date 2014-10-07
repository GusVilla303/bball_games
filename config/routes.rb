Rails.application.routes.draw do
  resources :users,       only: [:new, :create, :show, :edit, :update] do
    member do
      get :dashboard
      get :avatar
    end
  end

  resources :welcome
  root to: 'welcome#index'
  get 'auth/twitter/callback', to: 'sessions#create', as: 'signin'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'


  get 'dashboard', to: 'users#dashboard', as: 'dashboard'
end
