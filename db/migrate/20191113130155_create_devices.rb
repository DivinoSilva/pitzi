class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.references :custumers
      t.string :manufacturer
      t.string :model
      t.string :imei

      t.timestamps
    end
  end
end
