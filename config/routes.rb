Rails.application.routes.draw do
  get 'home/index'

  get 'home/about'

  get 'home/services'

  get 'home/contact'

  post 'home/questions'

  root   'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
