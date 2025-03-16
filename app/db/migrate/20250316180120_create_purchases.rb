class CreatePurchases < ActiveRecord::Migration[8.0]
  def change
    create_table :purchases do |t|
      t.string :seller_name, null: false
      t.datetime :purchased_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
