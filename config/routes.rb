Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/search'
  post 'gallery/search'
  get 'gallery/checkout'
  post 'gallery/checkout'
  resources :stores
  get "admin/login"
  post "admin/login"
  get "admin/logout"
  get "account/signup"
  get "account/login"
  get "account/forget_password"
  get "account/reset_password"
  get "account/index"
  devise_for :users

  #get "/assets/fonts/fontawesome-webfont"
 # get "/assets/fonts/fontawesome-webfont.woff"
#get "/assets/fonts/fontawesome-webfont.woff2"
#get "/assets/fonts/octin_sports_rg"
  
  root 'gallery#index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


