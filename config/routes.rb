Rails.application.routes.draw do
  resources :notes
  resources :topics
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions", :passwords => "passwords"}
  root to: "home#index"
end
