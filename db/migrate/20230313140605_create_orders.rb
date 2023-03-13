class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
