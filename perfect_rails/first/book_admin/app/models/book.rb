class Book < ApplicationRecord
  # よく利用する検索条件に名前をつけて保存する
  # scope 変数名 -> {　検索条件 }
  scope :costly, -> { where("price > ?", 3000) }

  belongs_to :publisher
  has_many :book_authors
  has_many :authors, through: :book_authors

  # add validates
  validates :name, presence: true #dbの方でもnot nullを行っている前提
  validates :name, length: { maximum: 25 }
  validates :price, numericality: {greater_than_or_equal_to: 0}

  # uniq validates
  validate do |book|
    if book.name.include?("programing")
      book.errors[:name] << "this is programing book!!!!"
    end
  end

  # hooks varidate
  before_validation :lovely_cat

  def lovely_cat
    # gsub文字列置換  trueの場合、一致した値を渡す
    self.name = self.name.gsub(/Cat/) do |matched|
      "lobely #{matched}"
    end
  end

  # rails側でenum型として扱う　フラグ管理
  enum sales_status: {
    resavetion: 0,
    now_on_sale: 1,
    end_of_print: 2,
  }
end
