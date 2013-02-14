Bball::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
  namespace :api do
    resources :tokens,:only => [:create, :destroy]
  end
  
end