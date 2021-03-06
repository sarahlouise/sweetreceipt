Rails.application.routes.draw do
  # get 'users/:id' => "users#show"
  get 'dashboard' => "users#dashboard"


  root 'static_pages#home'
  get 'static_pages/home'
  devise_for :users

  resources :receipts, only: [:index, :show, :create, :new, :update]

# ======= Donation Items Roots ======= 
    get "receipts/:id/donations/new" => "donations#new", as: :new_donation
    post "receipts/:id/donations" => "donations#create", as: :create_donation
    get "receipts/:id/donations/:id/edit" => "donations#edit", as: :edit_donation
    patch "receipts/:id/donations/:id" => "donations#update", as: :update_donation
    delete "receipts/:id/donations/:id" => "donations#destroy", as: :delete_donation

end
