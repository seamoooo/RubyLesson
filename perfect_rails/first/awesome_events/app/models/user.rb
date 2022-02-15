class User < ApplicationRecord
  before_destroy :check_all_events_finished

  # userとeventは1対多　通常はmodel名のeventだが、関連元のユーザが作成したイベントであることを表現して、
  # created_event
  # https://qiita.com/tomoharutt/items/e548186c763079327ed1
  has_many :created_event, class_name: "Event", foreign_key: "owner_id", dependent: :nullify
  # 削除時に外部キーのnullにする
  has_many :tickets, dependent: :nullify
  # https://sakaishun.com/2021/03/20/classname-source/ 説明
  # チケットを中間テーブルとして、イベントとチケットは多対多の関係
  has_many :participating_events, through: :tickets, source: :event

  def self.find_or_create_from_auth_hash!(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    nickname = auth_hash[:info][:nickname]
    image_url = auth_hash[:info][:image]

    # 引数で指定した条件があれば、取得、なければ作成
    User.find_or_create_by!(provider: provider, uid: uid) do |user|
      user.name = nickname
      user.image_url = image_url
    end
  end

  private

  def check_all_events_finished
    now = Time.zone.now
    if created_event.where(":now < end_at", now: now).exists?
      errors[:base] << '公開中ののイベントが存在します。'
    end

    if participating_events.where(":now < end_at", now: now).exists?
      errors[:base] << "未終了の参加イベントが存在します。"
    end

    throw(:about) unless errors.empty?
  end
end