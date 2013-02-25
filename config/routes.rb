Bball::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users do
    member do
      get 'show_comments'
    end
  end
  
  namespace :api do
    resources :tokens,:only => [:create, :destroy]
  end
  
  resources :comments
  resources :courts do
    member do
      get 'show_comments'
    end
  end
  
end