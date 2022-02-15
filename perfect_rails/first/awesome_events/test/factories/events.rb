FactoryBot.define do
  factory :event do
   owner # userで定義したaliasを参照
   sequence(:name) { |i| "イベント名#{i}"}
   sequence(:place) { |i| "イベント開催場所#{i}"}
   sequence(:content) { |i| "イベント本文#{i}"}
   start_at { rand(1..30).days.from_now } # 乱数を使用して、取る値を広げる
   end_at { start_at + rand(1..30).hours }
  end
end
