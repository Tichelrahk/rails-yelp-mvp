Rails.application.routes.draw do
  resources :restaurants, except: %i[delete update edit] do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
