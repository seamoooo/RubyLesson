class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :user
      # add_indexで複合キーの設定をしたので、単体でのindexは不要
      t.references :event, null: false, foreign_key: true, index: false
      t.string :commnent

      t.timestamps
    end

    # tucketsは重複したユーザーが利用できないので、evenr_idとuser_idは複合キー
    add_index :tickets, %i[event_id, user_id], unique: true
  end
end
# https://qiita.com/qsona/items/738be3c9f69d0818944f