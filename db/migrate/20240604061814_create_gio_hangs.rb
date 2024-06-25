class CreateGioHangs < ActiveRecord::Migration[7.1]
  def change
    create_table :gio_hangs do |t|
      t.references :nguoidung, null: false, foreign_key: true
      t.references :sach, null: false, foreign_key: true
      t.string :AnhMinhHoa
      t.string :TenSach
      t.integer :Gia
      t.references :danh_muc, null: false, foreign_key: true
      t.integer :soluong
      t.integer :thanhtien

      t.timestamps
    end
  end
end
