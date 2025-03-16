class CreateIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.float :quantity, null: false, default: 0
      t.float :unit_cost, null: false, default: 0
    end
  end
end
