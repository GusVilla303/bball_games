Rails.application.routes.draw do
  get 'user_events/index'

  get 'user_events/show'

  get 'user_events/new'

  get 'user_events/edit'

  get 'user_events/create'

  get 'user_events/update'

  get 'user_events/destroy'

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

  resources :events
end
