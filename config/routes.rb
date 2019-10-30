Rails.application.routes.draw do
  
  root 'reports#index'

  get "report", to: "reports#report"

  resources :reports
  resources :routes
  resources :reservations
  
end
