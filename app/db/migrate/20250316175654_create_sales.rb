class CreateSales < ActiveRecord::Migration[8.0]
  def change
    create_table :sales do |t|
      t.string :buyer_name, null: false
      t.datetime :sold_at, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
