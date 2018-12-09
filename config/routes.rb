Rails.application.routes.draw do
  get "/auth/github/callback", to: "sessions#create"

  get 'auth/failure', to: redirect('/')

  delete 'signout', to: 'sessions#destroy', as: 'signout'

  root to: 'sessions#new'
end
