Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'users/show'
  get 'users/index'
  get 'users/profile'
  get '/profile', to: 'users#profile', as: :profile

  root 'links#index'
  get 'links/about'
  resources :users, :only => [:show, :index], :controllers => { registrations: 'registrations' }

  resources :links
  get 'upvote/:id' => 'links#upvote', as: :upvote
  get 'downvote/:id' => 'links#downvote', as: :downvote

end
