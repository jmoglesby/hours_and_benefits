Rails.application.routes.draw do
  get 'sick_hours_events/gain', to: 'sick_hours_events#gain'
  get 'vacation_hours_events/gain', to: 'vacation_hours_events#gain'
  resources :hours_events, :sick_hours_events, :vacation_hours_events
  devise_for :users

  root to: "dashboard#index", as: 'dashboard_index'
end
