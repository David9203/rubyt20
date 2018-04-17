Rails.application.routes.draw do
  devise_for :views
  devise_for :admins
  devise_for :users
  resources :posts do 
    resources :coments
  end
  root 'posts#index'
  get 'welcome/index'
  get 'welcome/show'
  get 'welcome/admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
