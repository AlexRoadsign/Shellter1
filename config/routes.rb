Rails.application.routes.draw do

  get "bookings", to:"bookings#index"

  get "getbookings/:id", to:"bookings#show

  get 'bookings/create'
  post 'bookings/create'

  get 'bookings/update'

  get 'bookings/edit'

  get 'bookings/delete'

  get "hostels", to:"hostels#index"

  get "hostels/:id", to"hostels#show"

  get 'hostels/create'

  get 'hostels/update'

  get 'hostels/edit'

  get 'hostels/delete'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
