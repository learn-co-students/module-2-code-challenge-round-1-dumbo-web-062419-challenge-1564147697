Rails.application.routes.draw do
  get 'appearances/index'

  get 'appearances/show'

  get 'appearances/new'

  get 'appearances/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
end
