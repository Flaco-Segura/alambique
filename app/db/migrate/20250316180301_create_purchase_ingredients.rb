class CreatePurchaseIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :purchase_ingredients do |t|
      t.references :purchase, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.float :quantity, null: false
      t.float :unit_cost, null: false
    end
  end
end
