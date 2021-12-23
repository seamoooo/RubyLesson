class CreateAddPublisherIdToBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :add_publisher_id_to_books do |t|
      t.references :publisher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
