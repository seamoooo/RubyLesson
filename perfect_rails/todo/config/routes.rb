Rails.application.routes.draw do
  # taskモデルのcrud操作を定義
  resources :tasks
  root "welcome#index"
end
