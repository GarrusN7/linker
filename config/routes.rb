Rails.application.routes.draw do

  root                'link#index'
  get 'show'    =>    'link#show'
  get 'new'     =>    'link#new'
  get 'update'  =>    'link#update'
  get 'create'  =>    'link#create'
  get 'edit'    =>    'link#edit'
  get 'destroy' =>    'link#destroy'

end 
