RailsBlog::Application.routes.draw do

  resources :users
  resources :tags
  resources :posts
  root 'posts#new'

end
