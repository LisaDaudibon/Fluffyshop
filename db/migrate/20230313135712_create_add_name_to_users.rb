class CreateAddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :add_name_to_users do |t|
      add_column :users, :first_name, :string
      add_column :users, :last_name, :string

      t.timestamps
    end
  end
end
