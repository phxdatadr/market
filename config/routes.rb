Rails.application.routes.draw do  

  resources :zipcodes

  devise_for :admins
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/products'

  get 'welcome/advertise'

  get 'welcome/login'

  get 'welcome/register'



  root to: 'welcome#index'
end
