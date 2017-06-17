Rails.application.routes.draw do

  resources :orders
  resources :food_items do
      resources :comments
  end
  get 'success' => "orders#success"
  get 'menu' => "home#menu"

  get 'contact_us' => "home#contact_us"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
