Rails.application.routes.draw do
  get 'users/showlogin'

  post 'users/login'

  resources :day_lives
  root "users#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
