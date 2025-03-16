class CreateSaleRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :sale_recipes do |t|
      t.references :sale, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.integer :quantity, null: false
    end
  end
end
