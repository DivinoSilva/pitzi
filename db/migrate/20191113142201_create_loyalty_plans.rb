class CreateLoyaltyPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :loyalty_plans do |t|
      t.string  :score
      t.decimal :discount

      t.timestamps
    end
  end
end
