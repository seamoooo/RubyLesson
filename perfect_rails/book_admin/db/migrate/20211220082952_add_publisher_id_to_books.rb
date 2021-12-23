class AddPublisherIdToBooks < ActiveRecord::Migration[6.1]
  def change
    # booksテーブルに対して、publisher(id)という外部キーを付与
    add_reference :books, :publisher, null: false, foreign_key: true
    change_column :books, :publisher_id, :integer, null: false
  end
end
