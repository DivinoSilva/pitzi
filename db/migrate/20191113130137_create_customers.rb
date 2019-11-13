class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.integer :document, unique: true
      t.string  :email, unique: true
      t.string  :name
      t.string  :score

      t.timestamps
    end
  end
end
