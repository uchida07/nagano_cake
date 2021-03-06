Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  namespace :admin do
    root "homes#top"
    resources :items
    resources :genres
    resources :customers
    resources :orders
  end

  scope module: :public do
     root "homes#top"
     get 'homes/about' => 'homes#about', as: :about
     get 'my_page/unsubscribe' => 'my_page#unsubscribe', as: :unsubscribe
     resources :my_page
     resources :addresses
     resources :items
   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
