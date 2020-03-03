Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'costume_designer/index'
  resources :production
 
  root 'costume_designer#index'

end
