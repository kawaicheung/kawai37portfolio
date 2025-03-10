Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "home#index"
  get "the-10000ft-view" => "home#the_10000ft_view"
  get "donedone" => "home#donedone"
  get "what" => "home#what"
  get "embracing-constraints" => "home#embracing_constraints"
  get "stretching" => "home#stretching"
  get "the-weird-history-of-css" => "home#the_weird_history_of_css"

  # Defines the root path route ("/")
  # root "posts#index"
end
