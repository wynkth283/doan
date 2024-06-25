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

ActiveRecord::Schema[7.1].define(version: 2024_06_06_135232) do
  create_table "dang_kies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "danh_mucs", force: :cascade do |t|
    t.string "TenDM"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "don_dat_hangs", force: :cascade do |t|
    t.integer "nguoidung_id", null: false
    t.string "TenND"
    t.string "Email"
    t.string "SDT"
    t.string "DiaChi"
    t.string "ChiTiet"
    t.integer "TongTien"
    t.date "NgayDat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nguoidung_id"], name: "index_don_dat_hangs_on_nguoidung_id"
  end

  create_table "gio_hangs", force: :cascade do |t|
    t.integer "nguoidung_id", null: false
    t.integer "sach_id", null: false
    t.string "AnhMinhHoa"
    t.string "TenSach"
    t.integer "Gia"
    t.integer "danh_muc_id", null: false
    t.integer "soluong"
    t.integer "thanhtien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["danh_muc_id"], name: "index_gio_hangs_on_danh_muc_id"
    t.index ["nguoidung_id"], name: "index_gio_hangs_on_nguoidung_id"
    t.index ["sach_id"], name: "index_gio_hangs_on_sach_id"
  end

  create_table "loai_quyens", force: :cascade do |t|
    t.string "TenQuyen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nguoidungs", force: :cascade do |t|
    t.string "TenND"
    t.string "Email"
    t.string "AnhDaiDien"
    t.string "DiaChi"
    t.integer "SDT"
    t.string "MatKhau"
    t.integer "loai_quyen_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loai_quyen_id"], name: "index_nguoidungs_on_loai_quyen_id"
  end

  create_table "saches", force: :cascade do |t|
    t.string "TenSach"
    t.string "AnhMinhHoa"
    t.string "Tacgia"
    t.integer "danh_muc_id", null: false
    t.string "Mota"
    t.string "NXB"
    t.integer "Gia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["danh_muc_id"], name: "index_saches_on_danh_muc_id"
  end

  add_foreign_key "don_dat_hangs", "nguoidungs"
  add_foreign_key "gio_hangs", "danh_mucs"
  add_foreign_key "gio_hangs", "nguoidungs"
  add_foreign_key "gio_hangs", "saches"
  add_foreign_key "nguoidungs", "loai_quyens"
  add_foreign_key "saches", "danh_mucs"
end
