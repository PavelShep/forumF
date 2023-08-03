Rails.application.routes.draw do
  resources :topics do
    resources :notes
  end
  devise_for :users, :controllers => {:registrations => "registrations", :sessions => "sessions", :passwords => "passwords"}
  root to: "home#index"
end
