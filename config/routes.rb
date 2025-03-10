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
  get "works" => "home#works"
  get "donedone" => "home#donedone"
  get "dnsdigest" => "home#dnsdigest"
  get "embracing-constraints" => "home#embracing_constraints"
  get "naming-things" => "home#naming_things"
  get "what" => "home#what"
  get "influences" => "home#influences"
  get "tastes" => "home#tastes"
  get "stretching" => "home#stretching"
  get "the-weird-history-of-css" => "home#the_weird_history_of_css"
  get "bits-of-delight" => "home#bits_of_delight"

  # Defines the root path route ("/")
  # root "posts#index"
end
