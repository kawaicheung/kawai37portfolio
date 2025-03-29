Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  root "home#index"

  get "pitch" => "pitch#me"

  get "works" => "works#index"
  get "works/donedone" => "works#donedone"
  get "works/donedone/gmail" => "works#donedone_gmail"
  get "works/dnsdigest" => "works#dnsdigest"
  get "works/naming-things" => "works#naming_things"
  get "works/baseball-scoreboards" => "works#baseball_scoreboards"
  get "works/meetle" => "works#meetle"
  get "works/communications" => "works#communications"
  get "contact" => "contact#index"

  get "writing" => "writing#index"
  get "writing/the-developers-code" => "writing#the_developers_code"
  get "writing/top-picks" => "writing#top_picks"


  # Defines the root path route ("/")
  # root "posts#index"
end
