Rails.application.routes.draw do
  devise_for :users
  mount Attachinary::Engine => "/attachinary"

  # get "bookings", to:"bookings#index"

  # get "getbookings/:id", to:"bookings#show

  # get 'bookings/create'
  # post 'bookings/create'

  # get 'bookings/update'

  # get 'bookings/edit'

  # get 'bookings/delete'

  # get "hostels", to:"hostels#index"

  # get "hostels/:id", to:"hostels#show"

  # get 'hostels/create'

  # get 'hostels/update'

  # get 'hostels/edit'

  # get 'hostels/delete'
  # devise_for :users

  resources :bookings, except: [:new]

  resources :hostels do
    resources :bookings, only:[:create]
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
