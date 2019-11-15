Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new'

  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # post 'cocktails', to: 'cocktails#create'

  resources :cocktails, only: [:index, :new, :show, :create] do
    resources :doses, only: [:index, :new, :create]
  end

  resources :doses, only: :destroy
end
