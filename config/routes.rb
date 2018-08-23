Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'my_drones', to: 'drones#my_drones'
  get 'my_drones/:id/edit', to: 'drones#edit', as: "editmydrone"
  post '/drones/:id/edit/change', to: 'drones#change', as: "dronechange"
  resources :drones do
    resources :bookings, only: [:index, :show, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
