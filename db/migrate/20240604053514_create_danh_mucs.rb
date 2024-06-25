class CreateDanhMucs < ActiveRecord::Migration[7.1]
  def change
    create_table :danh_mucs do |t|
      t.string :TenDM

      t.timestamps
    end
  end
end
