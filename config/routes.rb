Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :registrations
  resources :guardians
  resources :rallies

  get  '/success', to: "pages#success"  
  post '/register' => 'public_registrations#create'
  get  '/register', to: "public_registrations#new"
  root 'public_registrations#new'
end
