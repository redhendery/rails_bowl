Rails.application.routes.draw do
  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create' , as: 'create_message'
  root 'bowling#index'
  resources :bowling
end
