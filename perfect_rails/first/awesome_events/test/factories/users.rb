FactoryBot.define do
  factory :user, aliases: [:owner] do
    provider { "github" }
    # sequenceで連番を生成
    sequence(:uid){ |i| "uid#{i}" }
    sequence(:name){ |i| "name#{i}" }
    sequence(:image_url){ |i| "http://example.com/image#{i}.jpg"}
  end
end
