Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end
=======

  resources 'users', only: [:show, :edit, :update] do
    resources :avatars, only: [:create]
  end 
>>>>>>> develop
end
