Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'costume_designers/index'
  resources :productions
 resources :costumes
  root 'costume_designers#index'

end
