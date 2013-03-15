Teachme::Application.routes.draw do

  get '/' , to: 'staticpages#home', as: 'home'
  
  get '/login', to:'staticpages#login', as:'login'
  get '/signup', to: 'users#new', as:'signup'

  get '/index', to: 'staticpages#index', as: 'index'

  get '/signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions
  resources :users



 
end
