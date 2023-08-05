Rails.application.routes.draw do
  resources :topics do
    resources :notes
  end
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions", :passwords => "passwords"}
  resources :users, only: [:index, :edit, :update]
  root to: "home#index"
  resources :categories
  get "searchtopic", to: "topics#searchtopic"
end
