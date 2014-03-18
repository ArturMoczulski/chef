class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.references :producer, index: true

      t.timestamps
    end
  end
end
