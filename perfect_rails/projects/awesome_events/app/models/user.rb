class User < ApplicationRecord
  # userとeventは1対多　通常はmodel名のeventだが、関連元のユーザが作成したイベントであることを表現して、
  # created_event
  # https://qiita.com/tomoharutt/items/e548186c763079327ed1
  has_many :created_event, class_name: "Event", foreign_key: "owner_id"
  has_many :tickets


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
end