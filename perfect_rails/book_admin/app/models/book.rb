class Book < ApplicationRecord
  # よく利用する検索条件に名前をつけて保存する
  # scope 変数名 -> {　検索条件 }
  scope :costly, -> { where("price > ?", 3000) }

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors
end
