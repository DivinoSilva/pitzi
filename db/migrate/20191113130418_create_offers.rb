class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.decimal :annual_value

      t.timestamps
    end
  end
end
