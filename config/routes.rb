Rails.application.routes.draw do
  get 'user/index'
  get 'user/dashboard'
  get 'questionaire', to: 'pages#questionaire', as: 'questionaire'
  get 'user/show'
  get 'user/clubdashboard'
  devise_for :users
  root to: 'pages#home'
  post '/answer', to: 'pages#results', as: 'results'

  resources :clubs do
    resources :offers, except: [:show]
    resources :memberships, only: [:new, :create, :destroy, :update, :edit, :index]
    resources :reviews, only: [:new, :create, :delete]
    resources :rooms, only: [:new, :create] do
      resources :messages, only: [:index, :new, :create]
    end
  end

  resources :interests, except: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
