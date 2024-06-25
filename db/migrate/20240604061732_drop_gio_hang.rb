class DropGioHang < ActiveRecord::Migration[7.1]
  def change
    drop_table :gio_hangs
  end
end
