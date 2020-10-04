Rails.application.routes.draw do
  root 'menus#index'
  resources :menus, only: [:index, :create, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
