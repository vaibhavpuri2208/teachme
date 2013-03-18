Teachme::Application.routes.draw do

  get '/' , to: 'staticpages#home', as: 'home'
  
  get '/login', to:'staticpages#login', as:'login'
  get '/signup', to: 'users#new', as:'signup'

  get '/signout', to: 'sessions#destroy', as: 'signout'

  resources :mycourses
  resources :sessions
  resources :users
  resources :courses


 
end
