Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :registrations
  resources :guardians
  resources :rallies

  get  '/success', to: "pages#success"
  post '/register' => 'public_registrations#create'
  post '/confirm' => 'confirm#confirm'
  get  '/register', to: "public_registrations#new"
  root 'public_registrations#new'
end
