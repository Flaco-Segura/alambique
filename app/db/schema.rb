# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_03_16_180301) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name", null: false
    t.float "quantity", default: 0.0, null: false
    t.float "unit_cost", default: 0.0, null: false
  end

  create_table "purchase_ingredients", force: :cascade do |t|
    t.bigint "purchase_id", null: false
    t.bigint "ingredient_id", null: false
    t.float "quantity", null: false
    t.float "unit_cost", null: false
    t.index ["ingredient_id"], name: "index_purchase_ingredients_on_ingredient_id"
    t.index ["purchase_id"], name: "index_purchase_ingredients_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "seller_name", null: false
    t.datetime "purchased_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "ingredient_id", null: false
    t.float "quantity", null: false
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "sale_recipes", force: :cascade do |t|
    t.bigint "sale_id", null: false
    t.bigint "recipe_id", null: false
    t.integer "quantity", null: false
    t.index ["recipe_id"], name: "index_sale_recipes_on_recipe_id"
    t.index ["sale_id"], name: "index_sale_recipes_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "buyer_name", null: false
    t.datetime "sold_at", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "stocks", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.float "quantity", null: false
    t.float "unit_cost", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["ingredient_id"], name: "index_stocks_on_ingredient_id"
  end

  add_foreign_key "purchase_ingredients", "ingredients"
  add_foreign_key "purchase_ingredients", "purchases"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "sale_recipes", "recipes"
  add_foreign_key "sale_recipes", "sales"
  add_foreign_key "stocks", "ingredients"
end
