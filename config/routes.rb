Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :clubs do
    resources :offers, except: [:show]
    resources :memberships, only: [:new, :create, :destroy, :update, :edit, :index]
  end

  resources :interests, except: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
