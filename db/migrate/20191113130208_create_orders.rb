class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :offer_id
      t.integer :device_id
      t.integer :loyalty_plan_id
      t.integer :period

      t.timestamps
    end
  end
end
