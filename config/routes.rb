Rails.application.routes.draw do
  root 'pages#index'
  get '/index' => 'pages#index'
  get '/about'    => 'pages#about'
  get '/services' => 'pages#services'
  get '/contact'  => 'pages#contact'
  resources :subjects
  resources :registrations
  resources :bankslips
  resources :purposes
  resources :departments
  resources :banks
end
