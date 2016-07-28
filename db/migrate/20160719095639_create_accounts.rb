class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.float :price
      t.float :price_per_member

      t.timestamps
    end
  end
end
