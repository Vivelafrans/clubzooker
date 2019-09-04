Rails.application.routes.draw do
  resources :search_suggestions
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

  Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :sports, only: [ :index ]
      get "/sports/:query", to: 'sports#search', as: 'api_search'
      post "/messages/new", to: 'messages#create', as: 'api_message_create'
      get "/messages/:room_id/:club_id", to: 'messages#show', as: 'api_message_show'
    end
  end
end

  resources :interests, except: [:show, :index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
