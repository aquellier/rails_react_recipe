class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.string :purchase
      t.string :preparation
      t.string :cooking
      t.string :conservation

      t.timestamps
    end
  end
end
