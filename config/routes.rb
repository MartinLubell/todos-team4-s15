Rails.application.routes.draw do
  # get 'accounts/show'

  # get 'accounts/edit'

  get 'accounts/update'

  get 'accounts/show'

  get 'accounts/edit'

  # get 'accounts/update'

  # get 'todoitems/create'

  # get 'todoitems/show'

  # get 'todoitems/edit'

  # get 'todoitems/update'

  # get 'todoitems/destroy'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :accounts, only: [:show, :edit, :update]

  resources :todolists
  root to: "todolists#index"

  resources :todolists do
    resources :todoitems, only: [:create, :destroy]
  end

  resources :sessions, only: [:create, :destroy, :new]

  get '/login' => "sessions#new", as: "login"
  delete '/logout' => "sessions#destroy", as: "logout"

end