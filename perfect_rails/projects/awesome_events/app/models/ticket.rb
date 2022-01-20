class Ticket < ApplicationRecord
  # nullを許可する
  belongs_to :user, optional: true
  belongs_to :event

  validates :commnent, length: { maximum: 30}, allow_blank: true
end
