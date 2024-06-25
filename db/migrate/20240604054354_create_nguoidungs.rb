class CreateNguoidungs < ActiveRecord::Migration[7.1]
  def change
    create_table :nguoidungs do |t|
      t.string :TenND
      t.string :Email
      t.string :AnhDaiDien
      t.string :DiaChi
      t.integer :SDT
      t.string :MatKhau
      t.references :loai_quyen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
