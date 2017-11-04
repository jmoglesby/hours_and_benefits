Rails.application.routes.draw do
  resources :hours_logs
  resources :sick_hours_logs
  resources :vacation_hours_logs
  devise_for :users
  get 'dashboard/index'

  root to: "dashboard#index"
end
