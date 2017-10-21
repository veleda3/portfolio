Rails.application.routes.draw do

  resources :landings, only: [:index, :new, :create]


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :authors

  authenticate :author do
    resources :posts, only: [:new, :create, :edit, :update, :destroy]
  end

  authenticate :author do
    resources :jobs, only: [:new, :create, :edit, :update, :destroy]
  end


  resources :posts, only: [:show, :index]


  resources :jobs, only: [:index, :show,]

  get 'home/index'

  get 'home/about'

  get 'home/services'

  get 'home/contact'

  post 'home/questions'

  root   'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
