Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  get 'posts/new'

  get 'welcome/index'
  root 'welcome#index'

  resources :posts, except: [:index]
  resources :sessions

end
