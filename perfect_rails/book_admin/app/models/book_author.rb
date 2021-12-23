class BookAuthor < ApplicationRecord
  belongs_to :book
  belongs_to :auhor
end
