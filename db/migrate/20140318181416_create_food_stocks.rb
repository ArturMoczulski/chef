class CreateFoodStocks < ActiveRecord::Migration
  def change
    create_table :food_stocks do |t|
      t.references :food, index: true
      t.references :user, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
