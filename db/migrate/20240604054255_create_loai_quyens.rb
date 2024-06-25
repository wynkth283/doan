class CreateLoaiQuyens < ActiveRecord::Migration[7.1]
  def change
    create_table :loai_quyens do |t|
      t.string :TenQuyen

      t.timestamps
    end
  end
end
