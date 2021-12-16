class Book < ApplicationRecord
  # よく利用する検索条件に名前をつけて保存する
  # scope 変数名 -> {　検索条件 }
  scope :costly, -> { where("price > ?", 3000) }
end
