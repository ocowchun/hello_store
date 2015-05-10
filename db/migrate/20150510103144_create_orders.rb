class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :store_id
      t.integer :sales

      t.timestamps null: false
    end
  end
end
