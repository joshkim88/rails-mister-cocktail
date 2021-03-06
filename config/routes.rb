Rails.application.routes.draw do
  # get 'cocktail/name:string'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index show create new] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: %i[destroy]
end
