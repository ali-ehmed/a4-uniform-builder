# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180121132223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "garment_category"
    t.text "acs_garment_category_description"
    t.string "acs_garment_category_code"
    t.integer "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "md_no"
    t.string "pms_no"
    t.integer "text_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_tile_one"
    t.boolean "is_tile_two"
    t.boolean "is_tile_three"
    t.string "hex_code"
    t.string "colour_descriptions"
    t.string "colour_code"
    t.boolean "heat_transfer"
    t.boolean "screen_print"
    t.boolean "tackle_twill"
    t.string "tile_text_color", default: "#000000"
    t.integer "user_id"
    t.string "colour_name"
  end

  create_table "decorations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "decoration_type"
    t.string "decoration_method"
    t.string "thumbnail"
    t.string "factory_graphic_code"
    t.string "factory_layout_code"
    t.string "custom_graphic"
    t.string "custom_font_size"
    t.string "custom_font"
    t.string "custom_style"
    t.integer "style_method_id"
    t.integer "color_id"
    t.integer "price_id"
  end

  create_table "designs", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.string "category"
    t.string "colour"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fonts", force: :cascade do |t|
    t.string "code"
    t.string "font_code"
    t.string "font_file"
    t.string "font"
    t.integer "method_id"
    t.integer "text_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "style_method_id"
  end

  create_table "gender_options", force: :cascade do |t|
    t.integer "gender_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.string "acs_gender_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphic_colors", force: :cascade do |t|
    t.integer "graphic_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphic_style_methods", force: :cascade do |t|
    t.integer "graphic_id"
    t.integer "style_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphics", force: :cascade do |t|
    t.string "category"
    t.string "group"
    t.string "graphic_type"
    t.integer "sport_id"
    t.integer "gender_id"
    t.string "factory_graphic_code"
    t.string "image"
    t.integer "decoration_id"
    t.integer "placement_id"
    t.string "layout_factory_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "method_id"
    t.string "custom_graphic"
    t.string "custom_fee"
    t.integer "price_id"
    t.string "colour_codes"
    t.string "colour_1"
    t.string "colour_2"
    t.string "colour_3"
  end

  create_table "layouts", force: :cascade do |t|
    t.integer "graphic_id"
    t.string "layout1"
    t.string "layout2"
    t.string "layout3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logos", force: :cascade do |t|
    t.string "image"
    t.string "category"
    t.integer "style_id"
    t.integer "placement_id"
    t.string "selected_colour"
    t.integer "gender_id"
    t.string "factory_graphic_code"
    t.string "layout_factory_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "colour_1"
    t.string "colour_2"
    t.string "colour_3"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "receriver_id"
    t.integer "sender_id"
    t.string "notification_type"
    t.text "message"
    t.boolean "is_read"
    t.boolean "is_sent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "design_id"
    t.string "type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "placements", force: :cascade do |t|
    t.string "code"
    t.string "decoration_available_image"
    t.string "decoration_available_string"
    t.string "stellar_code"
    t.string "standard_size"
    t.string "measurement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "order_id"
    t.boolean "is_completed"
    t.integer "notification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "size"
    t.boolean "availble"
    t.string "size_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sport_categories", force: :cascade do |t|
    t.integer "sport_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "image"
    t.string "acs_sales_category_code"
    t.text "acs_sales_category_description"
    t.string "marketing_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sport_image"
    t.boolean "is_selected"
    t.string "sport_name"
    t.boolean "is_featured", default: false
  end

  create_table "style_colors", force: :cascade do |t|
    t.integer "style_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_decorations", force: :cascade do |t|
    t.integer "style_id"
    t.integer "decoration_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_methods", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.integer "graphic_id"
    t.integer "text_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_placements", force: :cascade do |t|
    t.integer "style_id"
    t.integer "placement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_sizes", force: :cascade do |t|
    t.integer "style_id"
    t.integer "size_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_sports", force: :cascade do |t|
    t.integer "sport_id"
    t.integer "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "style_code"
    t.string "acs_style"
    t.integer "gender_id"
    t.string "style_category"
    t.string "colour_description"
    t.integer "category_id"
    t.text "style_features"
    t.string "front"
    t.string "back"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "color_tiles"
  end

  create_table "templates", force: :cascade do |t|
    t.string "factory_graphic_code"
    t.string "image"
    t.integer "decoration_id"
    t.integer "placement_id"
    t.string "layout_factory_code"
    t.string "svg"
    t.string "layouts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "style_method_id"
    t.integer "price_id"
    t.integer "sport_id"
  end

  create_table "text_colors", force: :cascade do |t|
    t.integer "text_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_fonts", force: :cascade do |t|
    t.integer "text_id"
    t.integer "font_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "text_style_methods", force: :cascade do |t|
    t.integer "text_id"
    t.integer "style_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string "factory_graphic_code"
    t.integer "decoration_id"
    t.integer "placement_id"
    t.string "layout_factory_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "style_method_id"
    t.integer "price_id"
    t.integer "size_id"
    t.integer "font_id"
    t.integer "style_id"
    t.string "team_name"
    t.integer "team_number"
    t.boolean "is_stroke"
    t.string "stroke_width"
    t.string "outilne_colour"
    t.string "font_style"
    t.string "decoration_color"
    t.integer "stroke_text_width"
    t.string "font_family"
  end

  create_table "uniform_builders", force: :cascade do |t|
    t.integer "style_id"
    t.integer "sport_id"
    t.string "category"
    t.integer "gender_id"
    t.string "uniform_type"
    t.string "photo"
    t.string "color_id"
    t.integer "placement_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.string "password_confirmation"
    t.string "gender"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "user_name"
    t.integer "sport"
    t.integer "style"
    t.integer "design"
    t.integer "options"
    t.integer "decoration"
    t.text "category"
    t.integer "category_id"
    t.string "decoration_type"
    t.integer "color"
    t.integer "placement"
    t.string "placement_pos"
    t.string "graphic_color"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
