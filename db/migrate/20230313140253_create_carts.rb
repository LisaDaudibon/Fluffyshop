class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.decimal :total_price
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
