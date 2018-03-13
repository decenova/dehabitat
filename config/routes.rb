Rails.application.routes.draw do
  resources :day_lives
  root "day_lives#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
