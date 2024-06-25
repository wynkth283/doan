class CreateSaches < ActiveRecord::Migration[7.1]
  def change
    create_table :saches do |t|
      t.string :TenSach
      t.string :AnhMinhHoa
      t.string :Tacgia
      t.references :danh_muc, null: false, foreign_key: true
      t.string :Mota
      t.string :NXB
      t.integer :Gia

      t.timestamps
    end
  end
end
