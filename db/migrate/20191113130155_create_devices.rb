class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.references :customer
      t.string :manufacturer
      t.string :model
      t.string :imei

      t.timestamps
    end
  end
end
