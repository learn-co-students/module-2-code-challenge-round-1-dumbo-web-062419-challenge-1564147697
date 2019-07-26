Rails.application.routes.draw do
  resources :shows
  # get 'shows/new'

  # get 'shows/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :shows
end
