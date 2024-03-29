Rails.application.routes.draw do
  resources :events
  root "welcome#index"
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy"

  resources :retirements

  resources :events do
    resources :tickets
  end
end
