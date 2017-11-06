Rails.application.routes.draw do
  resources :vacation_hours_events
  resources :sick_hours_events
  resources :hours_events
  devise_for :users

  root to: "dashboard#index", as: 'dashboard_index'
end
