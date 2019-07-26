Rails.application.routes.draw do
  get 'logs/index'

  get 'logs/show'

  get 'logs/edit'

  get 'logs/new'

  get 'logs/create'

  get 'logs/update'

  get 'logs/destroy'

  get 'guests/index'

  get 'guests/show'

  get 'guests/edit'

  get 'guests/new'

  get 'guests/update'

  resources :logs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
 
end
