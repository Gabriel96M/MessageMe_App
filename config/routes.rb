Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'chatroom#index'
  post 'message', to: 'messages#create'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  resource :users, except: [:new]
  mount ActionCable.server, at: '/cable'
end
