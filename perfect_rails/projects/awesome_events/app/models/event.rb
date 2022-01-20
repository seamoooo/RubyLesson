class Event < ApplicationRecord
  has_many :tickets
  belongs_to :owner, class_name: "User"

  validates :name, length: { maximum: 50 }, presence: true
  validates :place, length: { maximum: 100 }, presence: true
  validates :content, length: { maximum: 2000 }, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  # 自作のメソッドのバリデーション時は単数系
  validate :start_at_should_before_end_at

  # イベント編集用 ユーザーフラグ
  def created_by?(user)
    return false unless user
    owner_id == user.id
  end

  private

  def start_at_should_before_end_at
    return unless start_at&&end_at

    if start_at >= end_at
      errors.add(:start_at, "は終了時間よりも前に設定してください")
    end
  end
end
