Rails.application.routes.draw do

  root 'links#index'
  get 'links/about'


  resources :links

end
