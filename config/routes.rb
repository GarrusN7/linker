Rails.application.routes.draw do

  root 'links#index'
  get 'links/about'


  resources :links
  get 'upvote/:id' => 'links#upvote', as: :upvote
  get 'downvote/:id' => 'links#downvote', as: :downvote

end
