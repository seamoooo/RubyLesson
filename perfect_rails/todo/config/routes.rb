Rails.application.routes.draw do
  # taskモデルのcrud操作を定義
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/book/:id" => "book#show"
end
