Rails.application.routes.draw do

  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"

  resources :publishers
  resource :prolile, only: %i{show edit update}

  # 下記のようにリソースの親子関係を設定することができる
  # resources :publishers do
  #   resources :books
  #   # 個別のリソースに対してのactionを定義することが可能
  #   # publishers/:id/detail
  #   member do
  #     get 'detail'
  #   end
  #   # 全体のリソースに対するactionを設定できる
  #   # publishers/serarch
  #   collection do
  #     get 'search'
  #   end
  # end
end
