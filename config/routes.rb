Rails.application.routes.draw do
  devise_for :users
  root to: 'hats#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hats, only: [:new, :create, :show, :index] do
    get 'pick_a_movie', to: 'hats#pick_a_movie'
    resources :movies, only: [ :new, :create, :destroy]
  end

  # get 'hats/:id/pick_a_movie', to: 'hats#pick_a_movie'
end
