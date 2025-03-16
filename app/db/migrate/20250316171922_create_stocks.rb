class CreateStocks < ActiveRecord::Migration[8.0]
  def change
    create_table :stocks do |t|
      t.references :ingredient, null: false, foreign_key: true
      t.float :quantity, null: false
      t.float :unit_cost, null: false
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
