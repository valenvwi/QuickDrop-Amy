Rails.application.routes.draw do
  devise_for :users
  root to: "orders#new"
  get "driverindex", to: "orders#driverindex"
  get "drivershow", to: "orders#drivershow"
  get "driveracceptedorders", to: "orders#driveracceptedorders"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :orders do
    get "specialshow", on: :member
    get "ordermarkascompleted"
    patch :accept
    patch :markascompleted
    patch :cancel
    patch :submit
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
