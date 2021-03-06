Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/home',to: 'welcome#home'
  get 'welcome/about',to: 'welcome#about'

  #pages
  root 'pages#home'
  get 'about',to: 'pages#about'
  get 'contact',to: 'pages#contact'

  #sign up
  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  #Login and Logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :articles
  #This one line will add  diff pages tht are required for like edit, update, delete etc.

  #Resources for catagories
  resources :categories, except: [:destroy]

end
